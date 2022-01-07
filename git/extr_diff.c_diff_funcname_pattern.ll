; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_funcname_pattern.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_funcname_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.userdiff_funcname = type { i64 }
%struct.diff_options = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.diff_filespec = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.userdiff_funcname }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.userdiff_funcname* (%struct.diff_options*, %struct.diff_filespec*)* @diff_funcname_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.userdiff_funcname* @diff_funcname_pattern(%struct.diff_options* %0, %struct.diff_filespec* %1) #0 {
  %3 = alloca %struct.diff_options*, align 8
  %4 = alloca %struct.diff_filespec*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %3, align 8
  store %struct.diff_filespec* %1, %struct.diff_filespec** %4, align 8
  %5 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %6 = load %struct.diff_options*, %struct.diff_options** %3, align 8
  %7 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @diff_filespec_load_driver(%struct.diff_filespec* %5, i32 %10)
  %12 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %13 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.userdiff_funcname, %struct.userdiff_funcname* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.diff_filespec*, %struct.diff_filespec** %4, align 8
  %21 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %19
  %26 = phi %struct.userdiff_funcname* [ %23, %19 ], [ null, %24 ]
  ret %struct.userdiff_funcname* %26
}

declare dso_local i32 @diff_filespec_load_driver(%struct.diff_filespec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
