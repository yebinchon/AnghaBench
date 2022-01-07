; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/arm/extr_main.c_poly1305_test.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/arm/extr_main.c_poly1305_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mac_message = common dso_local global i32 0, align 4
@mac_message_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @poly1305_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poly1305_test() #0 {
  %1 = alloca [32 x i32], align 16
  %2 = alloca [16 x i32], align 16
  %3 = alloca [16 x i32], align 16
  %4 = alloca [16 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast [32 x i32]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 128, i1 false)
  %8 = bitcast [16 x i32]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 64, i1 false)
  %9 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %10 = call i32 @cf_aes_init(i32* %5, i32* %9, i32 16)
  %11 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %12 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %13 = call i32 @cf_aes_encrypt(i32* %5, i32* %11, i32* %12)
  %14 = getelementptr inbounds [32 x i32], [32 x i32]* %1, i64 0, i64 0
  %15 = getelementptr inbounds i32, i32* %14, i64 16
  %16 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %17 = call i32 @cf_poly1305_init(i32* %6, i32* %15, i32* %16)
  %18 = load i32, i32* @mac_message, align 4
  %19 = load i32, i32* @mac_message_len, align 4
  %20 = call i32 @cf_poly1305_update(i32* %6, i32 %18, i32 %19)
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %22 = call i32 @cf_poly1305_finish(i32* %6, i32* %21)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cf_aes_init(i32*, i32*, i32) #2

declare dso_local i32 @cf_aes_encrypt(i32*, i32*, i32*) #2

declare dso_local i32 @cf_poly1305_init(i32*, i32*, i32*) #2

declare dso_local i32 @cf_poly1305_update(i32*, i32, i32) #2

declare dso_local i32 @cf_poly1305_finish(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
