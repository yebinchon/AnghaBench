; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_core6.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_core6.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@out = common dso_local global i64 0, align 8
@in = common dso_local global i64 0, align 8
@k = common dso_local global i32 0, align 4
@c = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i64, i64* @out, align 8
  %3 = load i64, i64* @in, align 8
  %4 = load i32, i32* @k, align 4
  %5 = load i64, i64* @c, align 8
  %6 = call i32 @crypto_core_salsa20(i64 %2, i64 %3, i32 %4, i64 %5)
  %7 = load i64, i64* @out, align 8
  %8 = load i64, i64* @c, align 8
  %9 = call i32 @print(i64 %7, i64 %8)
  %10 = load i64, i64* @out, align 8
  %11 = add nsw i64 %10, 20
  %12 = load i64, i64* @c, align 8
  %13 = add nsw i64 %12, 4
  %14 = call i32 @print(i64 %11, i64 %13)
  %15 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* @out, align 8
  %17 = add nsw i64 %16, 40
  %18 = load i64, i64* @c, align 8
  %19 = add nsw i64 %18, 8
  %20 = call i32 @print(i64 %17, i64 %19)
  %21 = load i64, i64* @out, align 8
  %22 = add nsw i64 %21, 60
  %23 = load i64, i64* @c, align 8
  %24 = add nsw i64 %23, 12
  %25 = call i32 @print(i64 %22, i64 %24)
  %26 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %27 = load i64, i64* @out, align 8
  %28 = add nsw i64 %27, 24
  %29 = load i64, i64* @in, align 8
  %30 = call i32 @print(i64 %28, i64 %29)
  %31 = load i64, i64* @out, align 8
  %32 = add nsw i64 %31, 28
  %33 = load i64, i64* @in, align 8
  %34 = add nsw i64 %33, 4
  %35 = call i32 @print(i64 %32, i64 %34)
  %36 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %37 = load i64, i64* @out, align 8
  %38 = add nsw i64 %37, 32
  %39 = load i64, i64* @in, align 8
  %40 = add nsw i64 %39, 8
  %41 = call i32 @print(i64 %38, i64 %40)
  %42 = load i64, i64* @out, align 8
  %43 = add nsw i64 %42, 36
  %44 = load i64, i64* @in, align 8
  %45 = add nsw i64 %44, 12
  %46 = call i32 @print(i64 %43, i64 %45)
  %47 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @crypto_core_salsa20(i64, i64, i32, i64) #1

declare dso_local i32 @print(i64, i64) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
