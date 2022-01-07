; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/emu/extr_nfcon.c_nfputs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/emu/extr_nfcon.c_nfputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @nfputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfputs(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [68 x i8], align 16
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds [68 x i8], [68 x i8]* %5, i64 0, i64 0
  %8 = call i64 @virt_to_phys(i8* %7)
  store i64 %8, i64* %6, align 8
  %9 = getelementptr inbounds [68 x i8], [68 x i8]* %5, i64 0, i64 64
  store i8 0, i8* %9, align 16
  br label %10

10:                                               ; preds = %13, %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ugt i32 %11, 64
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = getelementptr inbounds [68 x i8], [68 x i8]* %5, i64 0, i64 0
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @memcpy(i8* %14, i8* %15, i32 64)
  %17 = load i32, i32* @stderr_id, align 4
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @nf_call(i32 %17, i64 %18)
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 64
  store i8* %21, i8** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sub i32 %22, 64
  store i32 %23, i32* %4, align 4
  br label %10

24:                                               ; preds = %10
  %25 = getelementptr inbounds [68 x i8], [68 x i8]* %5, i64 0, i64 0
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @memcpy(i8* %25, i8* %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [68 x i8], [68 x i8]* %5, i64 0, i64 %30
  store i8 0, i8* %31, align 1
  %32 = load i32, i32* @stderr_id, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @nf_call(i32 %32, i64 %33)
  ret void
}

declare dso_local i64 @virt_to_phys(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @nf_call(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
