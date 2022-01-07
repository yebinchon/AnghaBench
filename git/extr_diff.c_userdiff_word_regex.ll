; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_userdiff_word_regex.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_userdiff_word_regex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filespec = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.index_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.diff_filespec*, %struct.index_state*)* @userdiff_word_regex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @userdiff_word_regex(%struct.diff_filespec* %0, %struct.index_state* %1) #0 {
  %3 = alloca %struct.diff_filespec*, align 8
  %4 = alloca %struct.index_state*, align 8
  store %struct.diff_filespec* %0, %struct.diff_filespec** %3, align 8
  store %struct.index_state* %1, %struct.index_state** %4, align 8
  %5 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %6 = load %struct.index_state*, %struct.index_state** %4, align 8
  %7 = call i32 @diff_filespec_load_driver(%struct.diff_filespec* %5, %struct.index_state* %6)
  %8 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %9 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  ret i8* %12
}

declare dso_local i32 @diff_filespec_load_driver(%struct.diff_filespec*, %struct.index_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
