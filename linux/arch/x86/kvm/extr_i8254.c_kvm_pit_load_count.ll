; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_kvm_pit_load_count.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_kvm_pit_load_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pit = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_pit_load_count(%struct.kvm_pit* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm_pit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_pit* %0, %struct.kvm_pit** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.kvm_pit*, %struct.kvm_pit** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = call i32 @mutex_is_locked(i32* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON_ONCE(i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.kvm_pit*, %struct.kvm_pit** %5, align 8
  %26 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.kvm_pit*, %struct.kvm_pit** %5, align 8
  %33 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 255, i32* %37, align 4
  %38 = load %struct.kvm_pit*, %struct.kvm_pit** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @pit_load_count(%struct.kvm_pit* %38, i32 %39, i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.kvm_pit*, %struct.kvm_pit** %5, align 8
  %44 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %42, i32* %48, align 4
  br label %54

49:                                               ; preds = %4
  %50 = load %struct.kvm_pit*, %struct.kvm_pit** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @pit_load_count(%struct.kvm_pit* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %20
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pit_load_count(%struct.kvm_pit*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
