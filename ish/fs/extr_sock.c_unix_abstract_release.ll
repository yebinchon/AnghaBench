; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_sock.c_unix_abstract_release.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_sock.c_unix_abstract_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_abstract = type { i64, i32 }

@unix_abstract_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unix_abstract*)* @unix_abstract_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unix_abstract_release(%struct.unix_abstract* %0) #0 {
  %2 = alloca %struct.unix_abstract*, align 8
  store %struct.unix_abstract* %0, %struct.unix_abstract** %2, align 8
  %3 = call i32 @lock(i32* @unix_abstract_lock)
  %4 = load %struct.unix_abstract*, %struct.unix_abstract** %2, align 8
  %5 = getelementptr inbounds %struct.unix_abstract, %struct.unix_abstract* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, -1
  store i64 %7, i64* %5, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.unix_abstract*, %struct.unix_abstract** %2, align 8
  %11 = getelementptr inbounds %struct.unix_abstract, %struct.unix_abstract* %10, i32 0, i32 1
  %12 = call i32 @list_remove(i32* %11)
  %13 = load %struct.unix_abstract*, %struct.unix_abstract** %2, align 8
  %14 = call i32 @free(%struct.unix_abstract* %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = call i32 @unlock(i32* @unix_abstract_lock)
  ret void
}

declare dso_local i32 @lock(i32*) #1

declare dso_local i32 @list_remove(i32*) #1

declare dso_local i32 @free(%struct.unix_abstract*) #1

declare dso_local i32 @unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
