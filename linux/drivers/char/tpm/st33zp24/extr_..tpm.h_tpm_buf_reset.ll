; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_..tpm.h_tpm_buf_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_..tpm.h_tpm_buf_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_buf = type { i64 }
%struct.tpm_header = type { i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpm_buf*, i32, i32)* @tpm_buf_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpm_buf_reset(%struct.tpm_buf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tpm_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tpm_header*, align 8
  store %struct.tpm_buf* %0, %struct.tpm_buf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tpm_buf*, %struct.tpm_buf** %4, align 8
  %9 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.tpm_header*
  store %struct.tpm_header* %11, %struct.tpm_header** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @cpu_to_be16(i32 %12)
  %14 = load %struct.tpm_header*, %struct.tpm_header** %7, align 8
  %15 = getelementptr inbounds %struct.tpm_header, %struct.tpm_header* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = call i8* @cpu_to_be32(i32 24)
  %17 = load %struct.tpm_header*, %struct.tpm_header** %7, align 8
  %18 = getelementptr inbounds %struct.tpm_header, %struct.tpm_header* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i8* @cpu_to_be32(i32 %19)
  %21 = load %struct.tpm_header*, %struct.tpm_header** %7, align 8
  %22 = getelementptr inbounds %struct.tpm_header, %struct.tpm_header* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  ret void
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
