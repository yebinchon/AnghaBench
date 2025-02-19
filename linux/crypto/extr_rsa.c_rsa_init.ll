; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_rsa.c_rsa_init.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_rsa.c_rsa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rsa = common dso_local global i32 0, align 4
@rsa_pkcs1pad_tmpl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rsa_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @crypto_register_akcipher(i32* @rsa)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* %1, align 4
  br label %16

8:                                                ; preds = %0
  %9 = call i32 @crypto_register_template(i32* @rsa_pkcs1pad_tmpl)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = call i32 @crypto_unregister_akcipher(i32* @rsa)
  %14 = load i32, i32* %2, align 4
  store i32 %14, i32* %1, align 4
  br label %16

15:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %15, %12, %6
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i32 @crypto_register_akcipher(i32*) #1

declare dso_local i32 @crypto_register_template(i32*) #1

declare dso_local i32 @crypto_unregister_akcipher(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
