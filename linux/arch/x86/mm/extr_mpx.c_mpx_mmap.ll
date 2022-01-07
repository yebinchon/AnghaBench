; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_mpx.c_mpx_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_mpx.c_mpx_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@VM_MPX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @mpx_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mpx_mmap(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  store %struct.mm_struct* %9, %struct.mm_struct** %4, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %12 = call i64 @mpx_bt_size_bytes(%struct.mm_struct* %11)
  %13 = icmp ne i64 %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i64, i64* @EINVAL, align 8
  %16 = sub i64 0, %15
  store i64 %16, i64* %2, align 8
  br label %41

17:                                               ; preds = %1
  %18 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %18, i32 0, i32 0
  %20 = call i32 @down_write(i32* %19)
  %21 = load i64, i64* %3, align 8
  %22 = load i32, i32* @PROT_READ, align 4
  %23 = load i32, i32* @PROT_WRITE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MAP_ANONYMOUS, align 4
  %26 = load i32, i32* @MAP_PRIVATE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @VM_MPX, align 4
  %29 = call i64 @do_mmap(i32* null, i32 0, i64 %21, i32 %24, i32 %27, i32 %28, i32 0, i64* %6, i32* null)
  store i64 %29, i64* %5, align 8
  %30 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %31 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %30, i32 0, i32 0
  %32 = call i32 @up_write(i32* %31)
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %17
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @mm_populate(i64 %36, i64 %37)
  br label %39

39:                                               ; preds = %35, %17
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* %2, align 8
  br label %41

41:                                               ; preds = %39, %14
  %42 = load i64, i64* %2, align 8
  ret i64 %42
}

declare dso_local i64 @mpx_bt_size_bytes(%struct.mm_struct*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @do_mmap(i32*, i32, i64, i32, i32, i32, i32, i64*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mm_populate(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
