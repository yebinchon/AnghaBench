; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_mscode_parser.c_mscode_parse.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_mscode_parser.c_mscode_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pefile_context = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Data: %zu [%*ph]\0A\00", align 1
@mscode_decoder = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mscode_parse(i8* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pefile_context*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.pefile_context*
  store %struct.pefile_context* %11, %struct.pefile_context** %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = sub i64 0, %12
  %15 = getelementptr i8, i8* %13, i64 %14
  store i8* %15, i8** %6, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %17, %16
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @pr_devel(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %19, i32 %21, i8* %22)
  %24 = load %struct.pefile_context*, %struct.pefile_context** %9, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @asn1_ber_decoder(i32* @mscode_decoder, %struct.pefile_context* %24, i8* %25, i64 %26)
  ret i32 %27
}

declare dso_local i32 @pr_devel(i8*, i64, i32, i8*) #1

declare dso_local i32 @asn1_ber_decoder(i32*, %struct.pefile_context*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
