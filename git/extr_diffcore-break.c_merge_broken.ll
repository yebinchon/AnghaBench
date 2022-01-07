; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-break.c_merge_broken.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-break.c_merge_broken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filepair = type { %struct.TYPE_5__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.diff_queue_struct = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"internal error in merge #1\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"internal error in merge #2\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"internal error in merge #3\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"internal error in merge #4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_filepair*, %struct.diff_filepair*, %struct.diff_queue_struct*)* @merge_broken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @merge_broken(%struct.diff_filepair* %0, %struct.diff_filepair* %1, %struct.diff_queue_struct* %2) #0 {
  %4 = alloca %struct.diff_filepair*, align 8
  %5 = alloca %struct.diff_filepair*, align 8
  %6 = alloca %struct.diff_queue_struct*, align 8
  %7 = alloca %struct.diff_filepair*, align 8
  %8 = alloca %struct.diff_filepair*, align 8
  %9 = alloca %struct.diff_filepair*, align 8
  store %struct.diff_filepair* %0, %struct.diff_filepair** %4, align 8
  store %struct.diff_filepair* %1, %struct.diff_filepair** %5, align 8
  store %struct.diff_queue_struct* %2, %struct.diff_queue_struct** %6, align 8
  %10 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  store %struct.diff_filepair* %10, %struct.diff_filepair** %7, align 8
  %11 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  store %struct.diff_filepair* %11, %struct.diff_filepair** %8, align 8
  %12 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %13 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = call i64 @DIFF_FILE_VALID(%struct.TYPE_5__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  store %struct.diff_filepair* %18, %struct.diff_filepair** %8, align 8
  %19 = load %struct.diff_filepair*, %struct.diff_filepair** %5, align 8
  store %struct.diff_filepair* %19, %struct.diff_filepair** %7, align 8
  br label %20

20:                                               ; preds = %17, %3
  %21 = load %struct.diff_filepair*, %struct.diff_filepair** %8, align 8
  %22 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = call i64 @DIFF_FILE_VALID(%struct.TYPE_5__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %20
  %29 = load %struct.diff_filepair*, %struct.diff_filepair** %8, align 8
  %30 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = call i64 @DIFF_FILE_VALID(%struct.TYPE_5__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %28
  %37 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %38 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = call i64 @DIFF_FILE_VALID(%struct.TYPE_5__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %36
  %45 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %46 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = call i64 @DIFF_FILE_VALID(%struct.TYPE_5__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = call i32 @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %44
  %53 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %6, align 8
  %54 = load %struct.diff_filepair*, %struct.diff_filepair** %8, align 8
  %55 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %58 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = call %struct.diff_filepair* @diff_queue(%struct.diff_queue_struct* %53, %struct.TYPE_5__* %56, %struct.TYPE_5__* %59)
  store %struct.diff_filepair* %60, %struct.diff_filepair** %9, align 8
  %61 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %62 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %65 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.diff_filepair*, %struct.diff_filepair** %8, align 8
  %67 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.diff_filepair*, %struct.diff_filepair** %8, align 8
  %73 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = call i32 @diff_free_filespec_data(%struct.TYPE_5__* %74)
  %76 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %77 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = call i32 @diff_free_filespec_data(%struct.TYPE_5__* %78)
  %80 = load %struct.diff_filepair*, %struct.diff_filepair** %8, align 8
  %81 = call i32 @free(%struct.diff_filepair* %80)
  %82 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %83 = call i32 @free(%struct.diff_filepair* %82)
  ret void
}

declare dso_local i64 @DIFF_FILE_VALID(%struct.TYPE_5__*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local %struct.diff_filepair* @diff_queue(%struct.diff_queue_struct*, %struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local i32 @diff_free_filespec_data(%struct.TYPE_5__*) #1

declare dso_local i32 @free(%struct.diff_filepair*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
