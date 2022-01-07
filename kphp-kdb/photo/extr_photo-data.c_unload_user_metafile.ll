; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_unload_user_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_unload_user_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@INIT = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unload_user_metafile (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot unload user metafile (%d)\0A\00", align 1
@unload_user = common dso_local global i32 0, align 4
@allocated_metafile_bytes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"unload_user_metafile (%d) END\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unload_user_metafile(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load i32, i32* @INIT, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* @verbosity, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %12, %1
  %17 = load i32, i32* @verbosity, align 4
  %18 = icmp sgt i32 %17, 2
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @stderr, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %16
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = call i32 @user_loaded(%struct.TYPE_5__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* @verbosity, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* @stderr, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = call i32 @assert(i32 0)
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i32, i32* @unload_user, align 4
  %40 = call i32 @RETURN(i32 %39, i32 0)
  br label %41

41:                                               ; preds = %38, %26
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @allocated_metafile_bytes, align 4
  %46 = sext i32 %45 to i64
  %47 = sub nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* @allocated_metafile_bytes, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = call i32 @unbind_user_metafile(%struct.TYPE_5__* %49)
  %51 = load i32, i32* @verbosity, align 4
  %52 = icmp sgt i32 %51, 2
  br i1 %52, label %53, label %57

53:                                               ; preds = %41
  %54 = load i32, i32* @stderr, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %41
  %58 = load i32, i32* @unload_user, align 4
  %59 = call i32 @RETURN(i32 %58, i32 1)
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @user_loaded(%struct.TYPE_5__*) #1

declare dso_local i32 @RETURN(i32, i32) #1

declare dso_local i32 @unbind_user_metafile(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
