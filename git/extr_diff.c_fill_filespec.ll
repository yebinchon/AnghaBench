; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_fill_filespec.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_fill_filespec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filespec = type { i32, i32, i32 }
%struct.object_id = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_filespec(%struct.diff_filespec* %0, %struct.object_id* %1, i32 %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.diff_filespec*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  store %struct.diff_filespec* %0, %struct.diff_filespec** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i32 %2, i32* %7, align 4
  store i16 %3, i16* %8, align 2
  %9 = load i16, i16* %8, align 2
  %10 = icmp ne i16 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %4
  %12 = load i16, i16* %8, align 2
  %13 = call i32 @canon_mode(i16 zeroext %12)
  %14 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %15 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %17 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %16, i32 0, i32 1
  %18 = load %struct.object_id*, %struct.object_id** %6, align 8
  %19 = call i32 @oidcpy(i32* %17, %struct.object_id* %18)
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.diff_filespec*, %struct.diff_filespec** %5, align 8
  %22 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %11, %4
  ret void
}

declare dso_local i32 @canon_mode(i16 zeroext) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
