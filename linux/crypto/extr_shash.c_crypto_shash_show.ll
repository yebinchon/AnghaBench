; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_shash.c_crypto_shash_show.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_shash.c_crypto_shash_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.crypto_alg = type { i32 }
%struct.shash_alg = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"type         : shash\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"blocksize    : %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"digestsize   : %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.crypto_alg*)* @crypto_shash_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_shash_show(%struct.seq_file* %0, %struct.crypto_alg* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca %struct.shash_alg*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.crypto_alg* %1, %struct.crypto_alg** %4, align 8
  %6 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %7 = call %struct.shash_alg* @__crypto_shash_alg(%struct.crypto_alg* %6)
  store %struct.shash_alg* %7, %struct.shash_alg** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %12 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.shash_alg*, %struct.shash_alg** %5, align 8
  %17 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  ret void
}

declare dso_local %struct.shash_alg* @__crypto_shash_alg(%struct.crypto_alg*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
