; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_brain.c_brain_compute_attack_wordlist.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_brain.c_brain_compute_attack_wordlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@FBUFSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brain_compute_attack_wordlist(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [8192 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = call i32* (...) @XXH64_createState()
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @XXH64_reset(i32* %9, i32 0)
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @hc_fopen(i32* %5, i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %17, %1
  %14 = call i32 @hc_feof(i32* %5)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 0
  %19 = call i32 @memset(i8* %18, i32 0, i32 8192)
  %20 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 0
  %21 = call i64 @hc_fread(i8* %20, i32 1, i32 8192, i32* %5)
  store i64 %21, i64* %6, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds [8192 x i8], [8192 x i8]* %4, i64 0, i64 0
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @XXH64_update(i32* %22, i8* %23, i64 %24)
  br label %13

26:                                               ; preds = %13
  %27 = call i32 @hc_fclose(i32* %5)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @XXH64_digest(i32* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @XXH64_freeState(i32* %30)
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

declare dso_local i32* @XXH64_createState(...) #1

declare dso_local i32 @XXH64_reset(i32*, i32) #1

declare dso_local i32 @hc_fopen(i32*, i8*, i8*) #1

declare dso_local i32 @hc_feof(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @hc_fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @XXH64_update(i32*, i8*, i64) #1

declare dso_local i32 @hc_fclose(i32*) #1

declare dso_local i32 @XXH64_digest(i32*) #1

declare dso_local i32 @XXH64_freeState(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
