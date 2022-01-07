; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_amiflop.c_dos_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_amiflop.c_dos_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dos_crc.CRCTable1 = internal global [256 x i8] c"\00\10 0@P`p\81\91\A1\B1\C1\D1\E1\F1\12\022\22RBrb\93\83\B3\A3\D3\C3\F3\E3$4\04\14dtDT\A5\B5\85\95\E5\F5\C5\D56&\16\06vfVF\B7\A7\97\87\F7\E7\D7\C7HXhx\08\18(8\C9\D9\E9\F9\89\99\A9\B9ZJzj\1A\0A:*\DB\CB\FB\EB\9B\8B\BB\ABl|L\\,<\0C\1C\ED\FD\CD\DD\AD\BD\8D\9D~n^N>.\1E\0E\FF\EF\DF\CF\BF\AF\9F\8F\91\81\B1\A1\D1\C1\F1\E1\10\000 P@p`\83\93\A3\B3\C3\D3\E3\F3\02\12\222BRbr\B5\A5\95\85\F5\E5\D5\C54$\14\04tdTD\A7\B7\87\97\E7\F7\C7\D7&6\06\16fvFV\D9\C9\F9\E9\99\89\B9\A9XHxh\18\088(\CB\DB\EB\FB\8B\9B\AB\BBJZjz\0A\1A*:\FD\ED\DD\CD\BD\AD\9D\8D|l\\L<,\1C\0C\EF\FF\CF\DF\AF\BF\8F\9Fn~N^.>\0E\1E", align 16
@dos_crc.CRCTable2 = internal global [256 x i8] c"\00!Bc\84\A5\C6\E7\08)Jk\8C\AD\CE\EF1\10sR\B5\94\F7\D69\18{Z\BD\9C\FF\DEbC \01\E6\C7\A4\85jK(\09\EE\CF\AC\8DSr\110\D7\F6\95\B4[z\198\DF\FE\9D\BC\C4\E5\86\A7@a\02#\CC\ED\8E\AFHi\0A+\F5\D4\B7\96qP3\12\FD\DC\BF\9EyX;\1A\A6\87\E4\C5\22\03`A\AE\8F\EC\CD*\0BhI\97\B6\D5\F4\132Qp\9F\BE\DD\FC\1B:Yx\88\A9\CA\EB\0C-No\80\A1\C2\E3\04%Fg\B9\98\FB\DA=\1C\7F^\B1\90\F3\D25\14wV\EA\CB\A8\89nO,\0D\E2\C3\A0\81fG$\05\DB\FA\99\B8_~\1D<\D3\F2\91\B0Wv\154Lm\0E/\C8\E9\8A\ABDe\06'\C0\E1\82\A3}\\?\1E\F9\D8\BB\9AuT7\16\F1\D0\B3\92.\0FlM\AA\8B\E8\C9&\07dE\A2\83\E0\C1\1F>]|\9B\BA\D9\F8\176Ut\93\B2\D1\F0", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*, i32, i32, i32)* @dos_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @dos_crc(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dos_crc.CRCTable1, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dos_crc.CRCTable2, i64 0, i64 0), i8** %11, align 8
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %12, align 8
  %17 = load i32, i32* %7, align 4
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %15, align 1
  %19 = load i32, i32* %6, align 4
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %14, align 1
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %49, %4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %22
  %26 = load i8*, i8** %12, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %12, align 8
  %28 = load i8, i8* %26, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* %14, align 1
  %31 = zext i8 %30 to i32
  %32 = xor i32 %29, %31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %13, align 1
  %34 = load i8*, i8** %10, align 8
  %35 = load i8, i8* %13, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* %15, align 1
  %41 = zext i8 %40 to i32
  %42 = xor i32 %39, %41
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %14, align 1
  %44 = load i8*, i8** %11, align 8
  %45 = load i8, i8* %13, align 1
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %15, align 1
  br label %49

49:                                               ; preds = %25
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %9, align 4
  br label %22

52:                                               ; preds = %22
  %53 = load i8, i8* %14, align 1
  %54 = zext i8 %53 to i32
  %55 = shl i32 %54, 8
  %56 = load i8, i8* %15, align 1
  %57 = zext i8 %56 to i32
  %58 = or i32 %55, %57
  %59 = trunc i32 %58 to i8
  ret i8 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
