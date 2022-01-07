; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/lib/extr_probes.c_probe_is_prohibited_opcode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/lib/extr_probes.c_probe_is_prohibited_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @probe_is_prohibited_opcode(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = bitcast i32* %4 to i8*
  %6 = call i32 @is_known_insn(i8* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %36

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 8
  switch i32 %15, label %28 [
    i32 12, label %16
    i32 11, label %16
    i32 131, label %16
    i32 68, label %16
    i32 172, label %16
    i32 173, label %16
    i32 198, label %19
  ]

16:                                               ; preds = %11, %11, %11, %11, %11, %11
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %36

19:                                               ; preds = %11
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 15
  switch i32 %23, label %27 [
    i32 0, label %24
  ]

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %36

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %11
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %35 [
    i32 257, label %32
    i32 45658, label %32
    i32 45632, label %32
    i32 45656, label %32
    i32 45592, label %32
    i32 45608, label %32
    i32 47501, label %32
    i32 58720, label %32
    i32 58721, label %32
    i32 45816, label %32
  ]

32:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %32, %24, %16, %8
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @is_known_insn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
