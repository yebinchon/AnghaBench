; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_word-split.c_enable_is_letter_sigils.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_word-split.c_enable_is_letter_sigils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_letter = common dso_local global i32* null, align 8
@std_sigil_word_detect = common dso_local global i32 0, align 4
@sigil_word_detect = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enable_is_letter_sigils() #0 {
  %1 = call i32 @declare_sigil(i8 signext 64)
  %2 = call i32 @declare_sigil(i8 signext 35)
  %3 = call i32 @declare_sigil(i8 signext 36)
  %4 = call i32 @declare_sigil(i8 signext 37)
  %5 = call i32 @declare_sigil(i8 signext 42)
  %6 = call i32 @declare_sigil(i8 signext 91)
  %7 = call i32 @declare_special(i8 signext 93)
  %8 = call i32 @declare_special(i8 signext 95)
  %9 = call i32 @declare_special(i8 signext 45)
  %10 = call i32 @declare_special(i8 signext 46)
  %11 = load i32*, i32** @is_letter, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 95
  store i32 4, i32* %12, align 4
  %13 = load i32, i32* @std_sigil_word_detect, align 4
  store i32 %13, i32* @sigil_word_detect, align 4
  ret void
}

declare dso_local i32 @declare_sigil(i8 signext) #1

declare dso_local i32 @declare_special(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
