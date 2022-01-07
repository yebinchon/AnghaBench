; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_coredump.c_spufs_coredump_extra_notes_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_coredump.c_spufs_coredump_extra_notes_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.coredump_params = type { i32 }
%struct.spu_context = type { i32 }

@spufs_coredump_read = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spufs_coredump_extra_notes_write(%struct.coredump_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coredump_params*, align 8
  %4 = alloca %struct.spu_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.coredump_params* %0, %struct.coredump_params** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %43, %1
  %9 = call %struct.spu_context* @coredump_next_context(i32* %5)
  store %struct.spu_context* %9, %struct.spu_context** %4, align 8
  %10 = icmp ne %struct.spu_context* %9, null
  br i1 %10, label %11, label %48

11:                                               ; preds = %8
  %12 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %13 = call i32 @spu_acquire_saved(%struct.spu_context* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %49

18:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %40, %18
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spufs_coredump_read, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %19
  %28 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.coredump_params*, %struct.coredump_params** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @spufs_arch_write_note(%struct.spu_context* %28, i32 %29, %struct.coredump_params* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %37 = call i32 @spu_release_saved(%struct.spu_context* %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %49

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %19

43:                                               ; preds = %19
  %44 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %45 = call i32 @spu_release_saved(%struct.spu_context* %44)
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %8

48:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %35, %16
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.spu_context* @coredump_next_context(i32*) #1

declare dso_local i32 @spu_acquire_saved(%struct.spu_context*) #1

declare dso_local i32 @spufs_arch_write_note(%struct.spu_context*, i32, %struct.coredump_params*, i32) #1

declare dso_local i32 @spu_release_saved(%struct.spu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
