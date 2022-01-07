; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_stat_failure_write.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_stat_failure_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.stat_failure = type { i32, i32* }

@.str = private unnamed_addr constant [47 x i8] c"stat_failure_write (S->prog: %s, S->size: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, i8*, %struct.stat_failure*)* @stat_failure_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stat_failure_write(%struct.connection* %0, i8* %1, %struct.stat_failure* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat_failure*, align 8
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.stat_failure* %2, %struct.stat_failure** %7, align 8
  %8 = load %struct.stat_failure*, %struct.stat_failure** %7, align 8
  %9 = getelementptr inbounds %struct.stat_failure, %struct.stat_failure* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.stat_failure*, %struct.stat_failure** %7, align 8
  %12 = getelementptr inbounds %struct.stat_failure, %struct.stat_failure* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32* %10, i32 %13)
  %15 = load %struct.stat_failure*, %struct.stat_failure** %7, align 8
  %16 = getelementptr inbounds %struct.stat_failure, %struct.stat_failure* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %30

20:                                               ; preds = %3
  %21 = load %struct.connection*, %struct.connection** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.stat_failure*, %struct.stat_failure** %7, align 8
  %24 = getelementptr inbounds %struct.stat_failure, %struct.stat_failure* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.stat_failure*, %struct.stat_failure** %7, align 8
  %27 = getelementptr inbounds %struct.stat_failure, %struct.stat_failure* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @return_one_key(%struct.connection* %21, i8* %22, i32* %25, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %20, %19
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @vkprintf(i32, i8*, i32*, i32) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
