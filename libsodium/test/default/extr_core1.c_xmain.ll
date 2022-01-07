; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_core1.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_core1.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@firstkey = common dso_local global i64* null, align 8
@zero = common dso_local global i32 0, align 4
@shared = common dso_local global i32 0, align 4
@c = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = load i64*, i64** @firstkey, align 8
  %4 = load i32, i32* @zero, align 4
  %5 = load i32, i32* @shared, align 4
  %6 = load i32, i32* @c, align 4
  %7 = call i32 @crypto_core_hsalsa20(i64* %3, i32 %4, i32 %5, i32 %6)
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %32, %0
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 32
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %18

16:                                               ; preds = %11
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i64*, i64** @firstkey, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = srem i32 %26, 8
  %28 = icmp eq i32 %27, 7
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %18
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %2, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %2, align 4
  br label %8

35:                                               ; preds = %8
  %36 = call i32 (...) @crypto_core_hsalsa20_outputbytes()
  %37 = icmp ugt i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = call i32 (...) @crypto_core_hsalsa20_inputbytes()
  %41 = icmp ugt i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = call i32 (...) @crypto_core_hsalsa20_keybytes()
  %45 = icmp ugt i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = call i32 (...) @crypto_core_hsalsa20_constbytes()
  %49 = icmp ugt i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  ret i32 0
}

declare dso_local i32 @crypto_core_hsalsa20(i64*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @crypto_core_hsalsa20_outputbytes(...) #1

declare dso_local i32 @crypto_core_hsalsa20_inputbytes(...) #1

declare dso_local i32 @crypto_core_hsalsa20_keybytes(...) #1

declare dso_local i32 @crypto_core_hsalsa20_constbytes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
