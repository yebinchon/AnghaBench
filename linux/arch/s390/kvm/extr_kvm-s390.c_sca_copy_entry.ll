; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_sca_copy_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_sca_copy_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esca_entry = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.bsca_entry = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esca_entry*, %struct.bsca_entry*)* @sca_copy_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sca_copy_entry(%struct.esca_entry* %0, %struct.bsca_entry* %1) #0 {
  %3 = alloca %struct.esca_entry*, align 8
  %4 = alloca %struct.bsca_entry*, align 8
  store %struct.esca_entry* %0, %struct.esca_entry** %3, align 8
  store %struct.bsca_entry* %1, %struct.bsca_entry** %4, align 8
  %5 = load %struct.bsca_entry*, %struct.bsca_entry** %4, align 8
  %6 = getelementptr inbounds %struct.bsca_entry, %struct.bsca_entry* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.esca_entry*, %struct.esca_entry** %3, align 8
  %9 = getelementptr inbounds %struct.esca_entry, %struct.esca_entry* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load %struct.bsca_entry*, %struct.bsca_entry** %4, align 8
  %11 = getelementptr inbounds %struct.bsca_entry, %struct.bsca_entry* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.esca_entry*, %struct.esca_entry** %3, align 8
  %15 = getelementptr inbounds %struct.esca_entry, %struct.esca_entry* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load %struct.bsca_entry*, %struct.bsca_entry** %4, align 8
  %18 = getelementptr inbounds %struct.bsca_entry, %struct.bsca_entry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.esca_entry*, %struct.esca_entry** %3, align 8
  %22 = getelementptr inbounds %struct.esca_entry, %struct.esca_entry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
