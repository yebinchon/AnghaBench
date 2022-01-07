; ModuleID = '/home/carl/AnghaBench/git/extr_diffcore-rename.c_record_rename_pair.c'
source_filename = "/home/carl/AnghaBench/git/extr_diffcore-rename.c_record_rename_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.diff_filepair*, %struct.diff_filespec* }
%struct.diff_filepair = type { i32, i32 }
%struct.diff_filespec = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.diff_filespec* }

@rename_dst = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"internal error: dst already matched.\00", align 1
@rename_src = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @record_rename_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_rename_pair(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.diff_filespec*, align 8
  %8 = alloca %struct.diff_filespec*, align 8
  %9 = alloca %struct.diff_filepair*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rename_dst, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.diff_filepair*, %struct.diff_filepair** %14, align 8
  %16 = icmp ne %struct.diff_filepair* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rename_src, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.diff_filespec*, %struct.diff_filespec** %26, align 8
  store %struct.diff_filespec* %27, %struct.diff_filespec** %7, align 8
  %28 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %29 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %33 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rename_dst, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.diff_filespec*, %struct.diff_filespec** %40, align 8
  store %struct.diff_filespec* %41, %struct.diff_filespec** %8, align 8
  %42 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %43 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %47 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %48 = call %struct.diff_filepair* @diff_queue(i32* null, %struct.diff_filespec* %46, %struct.diff_filespec* %47)
  store %struct.diff_filepair* %48, %struct.diff_filepair** %9, align 8
  %49 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %50 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  %51 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %52 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %55 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @strcmp(i32 %53, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %19
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rename_src, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %67 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %72

68:                                               ; preds = %19
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %71 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %59
  %73 = load %struct.diff_filepair*, %struct.diff_filepair** %9, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rename_dst, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store %struct.diff_filepair* %73, %struct.diff_filepair** %78, align 8
  ret void
}

declare dso_local i32 @die(i8*) #1

declare dso_local %struct.diff_filepair* @diff_queue(i32*, %struct.diff_filespec*, %struct.diff_filespec*) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
