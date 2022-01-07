; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_unaligned_32.c_do_int_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_unaligned_32.c_do_int_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64*, %struct.pt_regs*)* @do_int_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_int_store(i32 %0, i32 %1, i64* %2, %struct.pt_regs* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca [2 x i64], align 16
  %10 = alloca i64*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store %struct.pt_regs* %3, %struct.pt_regs** %8, align 8
  %11 = bitcast [2 x i64]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 16, i1 false)
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %17 = call i64* @fetch_reg_addr(i32 %15, %struct.pt_regs* %16)
  store i64* %17, i64** %10, align 8
  br label %27

18:                                               ; preds = %4
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  store i64* %19, i64** %10, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 8
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %24 = call i64 @fetch_reg(i32 1, %struct.pt_regs* %23)
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  store i64 %24, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %18
  br label %27

27:                                               ; preds = %26, %14
  %28 = load i64*, i64** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i64*, i64** %10, align 8
  %31 = call i32 @__do_int_store(i64* %28, i32 %29, i64* %30)
  ret i32 %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64* @fetch_reg_addr(i32, %struct.pt_regs*) #2

declare dso_local i64 @fetch_reg(i32, %struct.pt_regs*) #2

declare dso_local i32 @__do_int_store(i64*, i32, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
