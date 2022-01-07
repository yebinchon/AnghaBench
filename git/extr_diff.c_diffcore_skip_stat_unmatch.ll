; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diffcore_skip_stat_unmatch.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diffcore_skip_stat_unmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32, %struct.diff_filepair** }
%struct.diff_filepair = type { i32 }
%struct.diff_options = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@diff_queued_diff = common dso_local global %struct.diff_queue_struct zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_options*)* @diffcore_skip_stat_unmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diffcore_skip_stat_unmatch(%struct.diff_options* %0) #0 {
  %2 = alloca %struct.diff_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.diff_queue_struct*, align 8
  %5 = alloca %struct.diff_queue_struct, align 8
  %6 = alloca %struct.diff_filepair*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %2, align 8
  store %struct.diff_queue_struct* @diff_queued_diff, %struct.diff_queue_struct** %4, align 8
  %7 = call i32 @DIFF_QUEUE_CLEAR(%struct.diff_queue_struct* %5)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %46, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %11 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %8
  %15 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %16 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %15, i32 0, i32 1
  %17 = load %struct.diff_filepair**, %struct.diff_filepair*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %17, i64 %19
  %21 = load %struct.diff_filepair*, %struct.diff_filepair** %20, align 8
  store %struct.diff_filepair* %21, %struct.diff_filepair** %6, align 8
  %22 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %23 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %26 = call i64 @diff_filespec_check_stat_unmatch(i32 %24, %struct.diff_filepair* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %14
  %29 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %30 = call i32 @diff_q(%struct.diff_queue_struct* %5, %struct.diff_filepair* %29)
  br label %45

31:                                               ; preds = %14
  %32 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %33 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load %struct.diff_options*, %struct.diff_options** %2, align 8
  %39 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %37, %31
  %43 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %44 = call i32 @diff_free_filepair(%struct.diff_filepair* %43)
  br label %45

45:                                               ; preds = %42, %28
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %8

49:                                               ; preds = %8
  %50 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %51 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %50, i32 0, i32 1
  %52 = load %struct.diff_filepair**, %struct.diff_filepair*** %51, align 8
  %53 = call i32 @free(%struct.diff_filepair** %52)
  %54 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %4, align 8
  %55 = bitcast %struct.diff_queue_struct* %54 to i8*
  %56 = bitcast %struct.diff_queue_struct* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 16, i1 false)
  ret void
}

declare dso_local i32 @DIFF_QUEUE_CLEAR(%struct.diff_queue_struct*) #1

declare dso_local i64 @diff_filespec_check_stat_unmatch(i32, %struct.diff_filepair*) #1

declare dso_local i32 @diff_q(%struct.diff_queue_struct*, %struct.diff_filepair*) #1

declare dso_local i32 @diff_free_filepair(%struct.diff_filepair*) #1

declare dso_local i32 @free(%struct.diff_filepair**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
