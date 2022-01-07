; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_fstat.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_real.c_realfs_fstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }
%struct.statbuf = type { i32 }
%struct.stat = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fd*, %struct.statbuf*)* @realfs_fstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @realfs_fstat(%struct.fd* %0, %struct.statbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fd*, align 8
  %5 = alloca %struct.statbuf*, align 8
  %6 = alloca %struct.stat, align 4
  store %struct.fd* %0, %struct.fd** %4, align 8
  store %struct.statbuf* %1, %struct.statbuf** %5, align 8
  %7 = load %struct.fd*, %struct.fd** %4, align 8
  %8 = getelementptr inbounds %struct.fd, %struct.fd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @fstat(i32 %9, %struct.stat* %6)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @errno_map()
  store i32 %13, i32* %3, align 4
  br label %17

14:                                               ; preds = %2
  %15 = load %struct.statbuf*, %struct.statbuf** %5, align 8
  %16 = call i32 @copy_stat(%struct.statbuf* %15, %struct.stat* %6)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %14, %12
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @errno_map(...) #1

declare dso_local i32 @copy_stat(%struct.statbuf*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
