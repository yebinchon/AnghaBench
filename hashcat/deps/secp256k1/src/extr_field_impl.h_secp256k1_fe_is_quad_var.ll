; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_field_impl.h_secp256k1_fe_is_quad_var.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/src/extr_field_impl.h_secp256k1_fe_is_quad_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@secp256k1_fe_is_quad_var.prime = internal constant [32 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\FC/", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @secp256k1_fe_is_quad_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256k1_fe_is_quad_var(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %6, align 4
  %9 = call i32 @secp256k1_fe_normalize_var(i32* %6)
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %11 = call i32 @secp256k1_fe_get_b32(i8* %10, i32* %6)
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %13 = call i32 @secp256k1_num_set_bin(i32* %4, i8* %12, i32 32)
  %14 = call i32 @secp256k1_num_set_bin(i32* %5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @secp256k1_fe_is_quad_var.prime, i64 0, i64 0), i32 32)
  %15 = call i64 @secp256k1_num_jacobi(i32* %4, i32* %5)
  %16 = icmp sge i64 %15, 0
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local i32 @secp256k1_fe_normalize_var(i32*) #1

declare dso_local i32 @secp256k1_fe_get_b32(i8*, i32*) #1

declare dso_local i32 @secp256k1_num_set_bin(i32*, i8*, i32) #1

declare dso_local i64 @secp256k1_num_jacobi(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
