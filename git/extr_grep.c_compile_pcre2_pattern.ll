; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_compile_pcre2_pattern.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_compile_pcre2_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_pat = type { i32 }
%struct.grep_opt = type { i32 }

@.str = private unnamed_addr constant [70 x i8] c"cannot use Perl-compatible regexes when not compiled with USE_LIBPCRE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grep_pat*, %struct.grep_opt*)* @compile_pcre2_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compile_pcre2_pattern(%struct.grep_pat* %0, %struct.grep_opt* %1) #0 {
  %3 = alloca %struct.grep_pat*, align 8
  %4 = alloca %struct.grep_opt*, align 8
  store %struct.grep_pat* %0, %struct.grep_pat** %3, align 8
  store %struct.grep_opt* %1, %struct.grep_opt** %4, align 8
  %5 = call i32 @die(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
