; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_sca_copy_b_to_e.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_sca_copy_b_to_e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esca_block = type { i32*, i32*, i32 }
%struct.bsca_block = type { i32*, i32, i32 }

@KVM_S390_BSCA_CPU_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esca_block*, %struct.bsca_block*)* @sca_copy_b_to_e to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sca_copy_b_to_e(%struct.esca_block* %0, %struct.bsca_block* %1) #0 {
  %3 = alloca %struct.esca_block*, align 8
  %4 = alloca %struct.bsca_block*, align 8
  %5 = alloca i32, align 4
  store %struct.esca_block* %0, %struct.esca_block** %3, align 8
  store %struct.bsca_block* %1, %struct.bsca_block** %4, align 8
  %6 = load %struct.bsca_block*, %struct.bsca_block** %4, align 8
  %7 = getelementptr inbounds %struct.bsca_block, %struct.bsca_block* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.esca_block*, %struct.esca_block** %3, align 8
  %10 = getelementptr inbounds %struct.esca_block, %struct.esca_block* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load %struct.bsca_block*, %struct.bsca_block** %4, align 8
  %12 = getelementptr inbounds %struct.bsca_block, %struct.bsca_block* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.esca_block*, %struct.esca_block** %3, align 8
  %15 = getelementptr inbounds %struct.esca_block, %struct.esca_block* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %13, i32* %17, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %36, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @KVM_S390_BSCA_CPU_SLOTS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load %struct.esca_block*, %struct.esca_block** %3, align 8
  %24 = getelementptr inbounds %struct.esca_block, %struct.esca_block* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load %struct.bsca_block*, %struct.bsca_block** %4, align 8
  %30 = getelementptr inbounds %struct.bsca_block, %struct.bsca_block* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i32 @sca_copy_entry(i32* %28, i32* %34)
  br label %36

36:                                               ; preds = %22
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %18

39:                                               ; preds = %18
  ret void
}

declare dso_local i32 @sca_copy_entry(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
