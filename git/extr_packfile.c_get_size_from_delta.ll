; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_get_size_from_delta.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_get_size_from_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i32 }
%struct.pack_window = type { i32 }
%struct.TYPE_6__ = type { i8*, i32, i32, i8*, i32 }

@Z_FINISH = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_BUF_ERROR = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"delta data unpack-initial failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_size_from_delta(%struct.packed_git* %0, %struct.pack_window** %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.packed_git*, align 8
  %6 = alloca %struct.pack_window**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [20 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca i32, align 4
  store %struct.packed_git* %0, %struct.packed_git** %5, align 8
  store %struct.pack_window** %1, %struct.pack_window*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = call i32 @memset(%struct.TYPE_6__* %11, i32 0, i32 32)
  %14 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i32 20, i32* %16, align 8
  %17 = call i32 @git_inflate_init(%struct.TYPE_6__* %11)
  br label %18

18:                                               ; preds = %51, %3
  %19 = load %struct.packed_git*, %struct.packed_git** %5, align 8
  %20 = load %struct.pack_window**, %struct.pack_window*** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  %23 = call i8* @use_pack(%struct.packed_git* %19, %struct.pack_window** %20, i32 %21, i32* %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* @Z_FINISH, align 4
  %27 = call i32 @git_inflate(%struct.TYPE_6__* %11, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %18
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @Z_OK, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @Z_BUF_ERROR, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42, %38
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %49, 20
  br label %51

51:                                               ; preds = %46, %42
  %52 = phi i1 [ false, %42 ], [ %50, %46 ]
  br i1 %52, label %18, label %53

53:                                               ; preds = %51
  %54 = call i32 @git_inflate_end(%struct.TYPE_6__* %11)
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @Z_STREAM_END, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp ne i64 %61, 20
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %73

65:                                               ; preds = %58, %53
  %66 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  store i8* %66, i8** %8, align 8
  %67 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %68 = getelementptr inbounds i8, i8* %67, i64 20
  %69 = call i64 @get_delta_hdr_size(i8** %8, i8* %68)
  %70 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %71 = getelementptr inbounds i8, i8* %70, i64 20
  %72 = call i64 @get_delta_hdr_size(i8** %8, i8* %71)
  store i64 %72, i64* %4, align 8
  br label %73

73:                                               ; preds = %65, %63
  %74 = load i64, i64* %4, align 8
  ret i64 %74
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @git_inflate_init(%struct.TYPE_6__*) #1

declare dso_local i8* @use_pack(%struct.packed_git*, %struct.pack_window**, i32, i32*) #1

declare dso_local i32 @git_inflate(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @git_inflate_end(%struct.TYPE_6__*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @get_delta_hdr_size(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
