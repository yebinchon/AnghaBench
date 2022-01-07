; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_get_textconv.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_get_textconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.userdiff_driver = type { i32 }
%struct.repository = type { i32 }
%struct.diff_filespec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.userdiff_driver* @get_textconv(%struct.repository* %0, %struct.diff_filespec* %1) #0 {
  %3 = alloca %struct.userdiff_driver*, align 8
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.diff_filespec*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.diff_filespec* %1, %struct.diff_filespec** %5, align 8
  %6 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %7 = call i32 @DIFF_FILE_VALID(%struct.diff_filespec* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.userdiff_driver* null, %struct.userdiff_driver** %3, align 8
  br label %21

10:                                               ; preds = %2
  %11 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %12 = load %struct.repository*, %struct.repository** %4, align 8
  %13 = getelementptr inbounds %struct.repository, %struct.repository* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @diff_filespec_load_driver(%struct.diff_filespec* %11, i32 %14)
  %16 = load %struct.repository*, %struct.repository** %4, align 8
  %17 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %18 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.userdiff_driver* @userdiff_get_textconv(%struct.repository* %16, i32 %19)
  store %struct.userdiff_driver* %20, %struct.userdiff_driver** %3, align 8
  br label %21

21:                                               ; preds = %10, %9
  %22 = load %struct.userdiff_driver*, %struct.userdiff_driver** %3, align 8
  ret %struct.userdiff_driver* %22
}

declare dso_local i32 @DIFF_FILE_VALID(%struct.diff_filespec*) #1

declare dso_local i32 @diff_filespec_load_driver(%struct.diff_filespec*, i32) #1

declare dso_local %struct.userdiff_driver* @userdiff_get_textconv(%struct.repository*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
