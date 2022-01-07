; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_link_alt_odb_entry.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_link_alt_odb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }
%struct.repository = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.object_directory** }
%struct.object_directory = type { %struct.object_directory*, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [46 x i8] c"unable to normalize alternate object path: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, i8*, i8*, i32, i8*)* @link_alt_odb_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_alt_odb_entry(%struct.repository* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.repository*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.object_directory*, align 8
  %13 = alloca %struct.strbuf, align 8
  store %struct.repository* %0, %struct.repository** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @is_absolute_path(i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @strbuf_realpath(%struct.strbuf* %13, i8* %22, i32 1)
  %24 = call i32 @strbuf_addch(%struct.strbuf* %13, i8 signext 47)
  br label %25

25:                                               ; preds = %21, %18, %5
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @strbuf_addstr(%struct.strbuf* %13, i8* %26)
  %28 = call i64 @strbuf_normalize_path(%struct.strbuf* %13)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %35 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @error(i32 %34, i8* %36)
  %38 = call i32 @strbuf_release(%struct.strbuf* %13)
  store i32 -1, i32* %6, align 4
  br label %99

39:                                               ; preds = %30, %25
  br label %40

40:                                               ; preds = %57, %39
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 47
  br label %55

55:                                               ; preds = %44, %40
  %56 = phi i1 [ false, %40 ], [ %54, %44 ]
  br i1 %56, label %57, label %62

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = call i32 @strbuf_setlen(%struct.strbuf* %13, i32 %60)
  br label %40

62:                                               ; preds = %55
  %63 = load %struct.repository*, %struct.repository** %7, align 8
  %64 = getelementptr inbounds %struct.repository, %struct.repository* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @alt_odb_usable(%struct.TYPE_2__* %65, %struct.strbuf* %13, i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %62
  %70 = call i32 @strbuf_release(%struct.strbuf* %13)
  store i32 -1, i32* %6, align 4
  br label %99

71:                                               ; preds = %62
  %72 = call %struct.object_directory* @xcalloc(i32 1, i32 16)
  store %struct.object_directory* %72, %struct.object_directory** %12, align 8
  %73 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @xstrdup(i8* %74)
  %76 = load %struct.object_directory*, %struct.object_directory** %12, align 8
  %77 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load %struct.object_directory*, %struct.object_directory** %12, align 8
  %79 = load %struct.repository*, %struct.repository** %7, align 8
  %80 = getelementptr inbounds %struct.repository, %struct.repository* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load %struct.object_directory**, %struct.object_directory*** %82, align 8
  store %struct.object_directory* %78, %struct.object_directory** %83, align 8
  %84 = load %struct.object_directory*, %struct.object_directory** %12, align 8
  %85 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %84, i32 0, i32 0
  %86 = load %struct.repository*, %struct.repository** %7, align 8
  %87 = getelementptr inbounds %struct.repository, %struct.repository* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store %struct.object_directory** %85, %struct.object_directory*** %89, align 8
  %90 = load %struct.object_directory*, %struct.object_directory** %12, align 8
  %91 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %90, i32 0, i32 0
  store %struct.object_directory* null, %struct.object_directory** %91, align 8
  %92 = load %struct.repository*, %struct.repository** %7, align 8
  %93 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  %97 = call i32 @read_info_alternates(%struct.repository* %92, i8* %94, i32 %96)
  %98 = call i32 @strbuf_release(%struct.strbuf* %13)
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %71, %69, %33
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @is_absolute_path(i8*) #2

declare dso_local i32 @strbuf_realpath(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i64 @strbuf_normalize_path(%struct.strbuf*) #2

declare dso_local i32 @error(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #2

declare dso_local i32 @alt_odb_usable(%struct.TYPE_2__*, %struct.strbuf*, i8*) #2

declare dso_local %struct.object_directory* @xcalloc(i32, i32) #2

declare dso_local i32 @xstrdup(i8*) #2

declare dso_local i32 @read_info_alternates(%struct.repository*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
