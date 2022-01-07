; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/boot/extr_..libstring.c___strend.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/boot/extr_..libstring.c___strend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @__strend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__strend(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call { i64, i8* } asm sideeffect "0: srst  $0,$1\0A   jo    0b", "={ax},={ax},0,1,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %4, i8* %5) #1, !srcloc !2
  %7 = extractvalue { i64, i8* } %6, 0
  %8 = extractvalue { i64, i8* } %6, 1
  store i64 %7, i64* %3, align 8
  store i8* %8, i8** %2, align 8
  %9 = load i64, i64* %3, align 8
  %10 = inttoptr i64 %9 to i8*
  ret i8* %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 258, i32 286}
