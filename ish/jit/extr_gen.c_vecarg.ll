; ModuleID = '/home/carl/AnghaBench/ish/jit/extr_gen.c_vecarg.c'
source_filename = "/home/carl/AnghaBench/ish/jit/extr_gen.c_vecarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modrm = type { i32 }

@vec_arg_reg = common dso_local global i32 0, align 4
@vec_arg_imm = common dso_local global i32 0, align 4
@vec_arg_xmm = common dso_local global i32 0, align 4
@modrm_reg = common dso_local global i32 0, align 4
@vec_arg_mem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unimplemented vecarg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.modrm*)* @vecarg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vecarg(i32 %0, %struct.modrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.modrm*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.modrm* %1, %struct.modrm** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %33 [
    i32 131, label %7
    i32 132, label %9
    i32 129, label %11
    i32 130, label %13
    i32 128, label %23
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @vec_arg_reg, align 4
  store i32 %8, i32* %3, align 4
  br label %35

9:                                                ; preds = %2
  %10 = load i32, i32* @vec_arg_imm, align 4
  store i32 %10, i32* %3, align 4
  br label %35

11:                                               ; preds = %2
  %12 = load i32, i32* @vec_arg_xmm, align 4
  store i32 %12, i32* %3, align 4
  br label %35

13:                                               ; preds = %2
  %14 = load %struct.modrm*, %struct.modrm** %5, align 8
  %15 = getelementptr inbounds %struct.modrm, %struct.modrm* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @modrm_reg, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @vec_arg_reg, align 4
  store i32 %20, i32* %3, align 4
  br label %35

21:                                               ; preds = %13
  %22 = load i32, i32* @vec_arg_mem, align 4
  store i32 %22, i32* %3, align 4
  br label %35

23:                                               ; preds = %2
  %24 = load %struct.modrm*, %struct.modrm** %5, align 8
  %25 = getelementptr inbounds %struct.modrm, %struct.modrm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @modrm_reg, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @vec_arg_xmm, align 4
  store i32 %30, i32* %3, align 4
  br label %35

31:                                               ; preds = %23
  %32 = load i32, i32* @vec_arg_mem, align 4
  store i32 %32, i32* %3, align 4
  br label %35

33:                                               ; preds = %2
  %34 = call i32 @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %7, %9, %11, %19, %21, %29, %31, %33
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
