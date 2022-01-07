; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fake.c_db_check_error.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fake.c_db_check_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"sqlite error: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mount*)* @db_check_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_check_error(%struct.mount* %0) #0 {
  %2 = alloca %struct.mount*, align 8
  %3 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %2, align 8
  %4 = load %struct.mount*, %struct.mount** %2, align 8
  %5 = getelementptr inbounds %struct.mount, %struct.mount* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @sqlite3_errcode(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %10 [
    i32 129, label %9
    i32 128, label %9
    i32 130, label %9
  ]

9:                                                ; preds = %1, %1, %1
  br label %16

10:                                               ; preds = %1
  %11 = load %struct.mount*, %struct.mount** %2, align 8
  %12 = getelementptr inbounds %struct.mount, %struct.mount* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @sqlite3_errmsg(i32 %13)
  %15 = call i32 @die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @sqlite3_errcode(i32) #1

declare dso_local i32 @die(i8*, i32) #1

declare dso_local i32 @sqlite3_errmsg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
