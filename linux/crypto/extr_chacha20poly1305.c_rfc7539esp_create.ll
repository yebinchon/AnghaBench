; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_rfc7539esp_create.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_rfc7539esp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32 }
%struct.rtattr = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"rfc7539esp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_template*, %struct.rtattr**)* @rfc7539esp_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfc7539esp_create(%struct.crypto_template* %0, %struct.rtattr** %1) #0 {
  %3 = alloca %struct.crypto_template*, align 8
  %4 = alloca %struct.rtattr**, align 8
  store %struct.crypto_template* %0, %struct.crypto_template** %3, align 8
  store %struct.rtattr** %1, %struct.rtattr*** %4, align 8
  %5 = load %struct.crypto_template*, %struct.crypto_template** %3, align 8
  %6 = load %struct.rtattr**, %struct.rtattr*** %4, align 8
  %7 = call i32 @chachapoly_create(%struct.crypto_template* %5, %struct.rtattr** %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 8)
  ret i32 %7
}

declare dso_local i32 @chachapoly_create(%struct.crypto_template*, %struct.rtattr**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
