; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_akcipher.c_crypto_register_akcipher.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_akcipher.c_crypto_register_akcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.akcipher_alg = type { i8*, i8*, i8*, i8*, %struct.crypto_alg }
%struct.crypto_alg = type { i32 }

@akcipher_default_op = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_register_akcipher(%struct.akcipher_alg* %0) #0 {
  %2 = alloca %struct.akcipher_alg*, align 8
  %3 = alloca %struct.crypto_alg*, align 8
  store %struct.akcipher_alg* %0, %struct.akcipher_alg** %2, align 8
  %4 = load %struct.akcipher_alg*, %struct.akcipher_alg** %2, align 8
  %5 = getelementptr inbounds %struct.akcipher_alg, %struct.akcipher_alg* %4, i32 0, i32 4
  store %struct.crypto_alg* %5, %struct.crypto_alg** %3, align 8
  %6 = load %struct.akcipher_alg*, %struct.akcipher_alg** %2, align 8
  %7 = getelementptr inbounds %struct.akcipher_alg, %struct.akcipher_alg* %6, i32 0, i32 3
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** @akcipher_default_op, align 8
  %12 = load %struct.akcipher_alg*, %struct.akcipher_alg** %2, align 8
  %13 = getelementptr inbounds %struct.akcipher_alg, %struct.akcipher_alg* %12, i32 0, i32 3
  store i8* %11, i8** %13, align 8
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.akcipher_alg*, %struct.akcipher_alg** %2, align 8
  %16 = getelementptr inbounds %struct.akcipher_alg, %struct.akcipher_alg* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** @akcipher_default_op, align 8
  %21 = load %struct.akcipher_alg*, %struct.akcipher_alg** %2, align 8
  %22 = getelementptr inbounds %struct.akcipher_alg, %struct.akcipher_alg* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  br label %23

23:                                               ; preds = %19, %14
  %24 = load %struct.akcipher_alg*, %struct.akcipher_alg** %2, align 8
  %25 = getelementptr inbounds %struct.akcipher_alg, %struct.akcipher_alg* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** @akcipher_default_op, align 8
  %30 = load %struct.akcipher_alg*, %struct.akcipher_alg** %2, align 8
  %31 = getelementptr inbounds %struct.akcipher_alg, %struct.akcipher_alg* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.akcipher_alg*, %struct.akcipher_alg** %2, align 8
  %34 = getelementptr inbounds %struct.akcipher_alg, %struct.akcipher_alg* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** @akcipher_default_op, align 8
  %39 = load %struct.akcipher_alg*, %struct.akcipher_alg** %2, align 8
  %40 = getelementptr inbounds %struct.akcipher_alg, %struct.akcipher_alg* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.akcipher_alg*, %struct.akcipher_alg** %2, align 8
  %43 = call i32 @akcipher_prepare_alg(%struct.akcipher_alg* %42)
  %44 = load %struct.crypto_alg*, %struct.crypto_alg** %3, align 8
  %45 = call i32 @crypto_register_alg(%struct.crypto_alg* %44)
  ret i32 %45
}

declare dso_local i32 @akcipher_prepare_alg(%struct.akcipher_alg*) #1

declare dso_local i32 @crypto_register_alg(%struct.crypto_alg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
