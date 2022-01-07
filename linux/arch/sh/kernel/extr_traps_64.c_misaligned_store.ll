; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/extr_traps_64.c_misaligned_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/extr_traps_64.c_misaligned_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64* }

@.str = private unnamed_addr constant [57 x i8] c"Unexpected width_shift %d in misaligned_store, PC=%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32, i32, i32)* @misaligned_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @misaligned_store(%struct.pt_regs* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @generate_and_check_address(%struct.pt_regs* %15, i32 %16, i32 %17, i32 %18, i64* %12)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %117

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = ashr i32 %25, 4
  %27 = and i32 %26, 63
  store i32 %27, i32* %11, align 4
  %28 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %29 = call i64 @user_mode(%struct.pt_regs* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %86

31:                                               ; preds = %24
  %32 = load i64, i64* %12, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = shl i64 1, %34
  %36 = call i32 @access_ok(i64 %32, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %117

39:                                               ; preds = %31
  %40 = load i32, i32* %9, align 4
  switch i32 %40, label %69 [
    i32 1, label %41
    i32 2, label %51
    i32 3, label %61
  ]

41:                                               ; preds = %39
  %42 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = bitcast i64* %13 to i32*
  store i32 %49, i32* %50, align 8
  br label %75

51:                                               ; preds = %39
  %52 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %53 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = bitcast i64* %13 to i32*
  store i32 %59, i32* %60, align 8
  br label %75

61:                                               ; preds = %39
  %62 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %13, align 8
  br label %75

69:                                               ; preds = %39
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %72 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %70, i64 %73)
  br label %75

75:                                               ; preds = %69, %61, %51, %41
  %76 = load i64, i64* %12, align 8
  %77 = trunc i64 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = load i32, i32* %9, align 4
  %81 = shl i32 1, %80
  %82 = call i64 @__copy_user(i8* %79, i64* %13, i32 %81)
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  store i32 -1, i32* %5, align 4
  br label %117

85:                                               ; preds = %75
  br label %116

86:                                               ; preds = %24
  %87 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %88 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %14, align 8
  %94 = load i32, i32* %9, align 4
  switch i32 %94, label %109 [
    i32 1, label %95
    i32 2, label %99
    i32 3, label %104
  ]

95:                                               ; preds = %86
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* %14, align 8
  %98 = call i32 @misaligned_kernel_word_store(i64 %96, i64 %97)
  br label %115

99:                                               ; preds = %86
  %100 = load i64, i64* %14, align 8
  %101 = load i64, i64* %12, align 8
  call void asm sideeffect "stlo.l $1, 0, $0", "r,r,~{dirflag},~{fpsr},~{flags}"(i64 %100, i64 %101) #2, !srcloc !2
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* %12, align 8
  call void asm sideeffect "sthi.l $1, 3, $0", "r,r,~{dirflag},~{fpsr},~{flags}"(i64 %102, i64 %103) #2, !srcloc !3
  br label %115

104:                                              ; preds = %86
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* %12, align 8
  call void asm sideeffect "stlo.q $1, 0, $0", "r,r,~{dirflag},~{fpsr},~{flags}"(i64 %105, i64 %106) #2, !srcloc !4
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* %12, align 8
  call void asm sideeffect "sthi.q $1, 7, $0", "r,r,~{dirflag},~{fpsr},~{flags}"(i64 %107, i64 %108) #2, !srcloc !5
  br label %115

109:                                              ; preds = %86
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %112 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %110, i64 %113)
  br label %115

115:                                              ; preds = %109, %104, %99, %95
  br label %116

116:                                              ; preds = %115, %85
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %116, %84, %38, %22
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @generate_and_check_address(%struct.pt_regs*, i32, i32, i32, i64*) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @access_ok(i64, i64) #1

declare dso_local i32 @printk(i8*, i32, i64) #1

declare dso_local i64 @__copy_user(i8*, i64*, i32) #1

declare dso_local i32 @misaligned_kernel_word_store(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1711}
!3 = !{i32 1769}
!4 = !{i32 1847}
!5 = !{i32 1905}
