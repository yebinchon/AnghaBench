; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_module-plts.c_is_zero_addend_relocation.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_module-plts.c_is_zero_addend_relocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_3__*)* @is_zero_addend_relocation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_zero_addend_relocation(i64 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %6, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ELF32_R_TYPE(i32 %17)
  switch i32 %18, label %45 [
    i32 129, label %19
    i32 128, label %19
    i32 132, label %38
    i32 130, label %38
    i32 131, label %38
  ]

19:                                               ; preds = %2, %2
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @__mem_to_opcode_thumb16(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @__mem_to_opcode_thumb16(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 2047
  %30 = icmp eq i32 %29, 2047
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 12287
  %34 = icmp eq i32 %33, 12286
  br label %35

35:                                               ; preds = %31, %19
  %36 = phi i1 [ false, %19 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %47

38:                                               ; preds = %2, %2, %2
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @__mem_to_opcode_arm(i32 %40)
  %42 = and i32 %41, 16777215
  %43 = icmp eq i32 %42, 16777214
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %2
  %46 = call i32 (...) @BUG()
  br label %47

47:                                               ; preds = %45, %38, %35
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @ELF32_R_TYPE(i32) #1

declare dso_local i32 @__mem_to_opcode_thumb16(i32) #1

declare dso_local i32 @__mem_to_opcode_arm(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
