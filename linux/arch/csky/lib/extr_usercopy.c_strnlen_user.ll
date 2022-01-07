; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/lib/extr_usercopy.c_strnlen_user.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/lib/extr_usercopy.c_strnlen_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strnlen_user(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %21

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call { i64, i8*, i64, i64 } asm sideeffect "       cmpnei  $1, 0           \0A       bf      3f              \0A1:     cmpnei  $0, 0           \0A       bf      3f              \0A2:     ldb     $3, ($1, 0)     \0A       cmpnei  $3, 0           \0A       bf      3f              \0A       subi    $0,  1          \0A       addi    $1,  1          \0A       br      1b              \0A3:     subu    $2, $0          \0A       addi    $2,  1          \0A       br      5f              \0A4:     movi    $0, 0           \0A       br      5f              \0A.section __ex_table, \22a\22     \0A.align   2                     \0A.long    2b, 4b                \0A.previous                      \0A5:                             \0A", "=r,=r,=r,=r,0,1,2,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %12, i8* %13, i64 %14) #1, !srcloc !2
  %16 = extractvalue { i64, i8*, i64, i64 } %15, 0
  %17 = extractvalue { i64, i8*, i64, i64 } %15, 1
  %18 = extractvalue { i64, i8*, i64, i64 } %15, 2
  %19 = extractvalue { i64, i8*, i64, i64 } %15, 3
  store i64 %16, i64* %5, align 8
  store i8* %17, i8** %4, align 8
  store i64 %18, i64* %6, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %3, align 8
  br label %21

21:                                               ; preds = %11, %10
  %22 = load i64, i64* %3, align 8
  ret i64 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 253, i32 291, i32 328, i32 365, i32 402, i32 439, i32 476, i32 513, i32 550, i32 587, i32 624, i32 661, i32 698, i32 735, i32 772, i32 809, i32 846, i32 883, i32 920, i32 957}
