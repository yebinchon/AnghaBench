; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_..tpm.h_tpm_buf_append.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/st33zp24/extr_..tpm.h_tpm_buf_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_buf = type { i32, i32* }
%struct.tpm_header = type { i32 }

@TPM_BUF_OVERFLOW = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"tpm_buf: overflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpm_buf*, i8*, i32)* @tpm_buf_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpm_buf_append(%struct.tpm_buf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tpm_buf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tpm_header*, align 8
  %8 = alloca i32, align 4
  store %struct.tpm_buf* %0, %struct.tpm_buf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.tpm_buf*, %struct.tpm_buf** %4, align 8
  %10 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = bitcast i32* %11 to %struct.tpm_header*
  store %struct.tpm_header* %12, %struct.tpm_header** %7, align 8
  %13 = load %struct.tpm_buf*, %struct.tpm_buf** %4, align 8
  %14 = call i32 @tpm_buf_length(%struct.tpm_buf* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.tpm_buf*, %struct.tpm_buf** %4, align 8
  %16 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @TPM_BUF_OVERFLOW, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %51

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add i32 %23, %24
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @TPM_BUF_OVERFLOW, align 4
  %31 = load %struct.tpm_buf*, %struct.tpm_buf** %4, align 8
  %32 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %51

35:                                               ; preds = %22
  %36 = load %struct.tpm_buf*, %struct.tpm_buf** %4, align 8
  %37 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @memcpy(i32* %41, i8* %42, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add i32 %45, %46
  %48 = call i32 @cpu_to_be32(i32 %47)
  %49 = load %struct.tpm_header*, %struct.tpm_header** %7, align 8
  %50 = getelementptr inbounds %struct.tpm_header, %struct.tpm_header* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %35, %28, %21
  ret void
}

declare dso_local i32 @tpm_buf_length(%struct.tpm_buf*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
