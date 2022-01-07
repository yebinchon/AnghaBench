; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_grep_source_load_oid.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_grep_source_load_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_source = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"'%s': unable to read %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grep_source*)* @grep_source_load_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grep_source_load_oid(%struct.grep_source* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.grep_source*, align 8
  %4 = alloca i32, align 4
  store %struct.grep_source* %0, %struct.grep_source** %3, align 8
  %5 = call i32 (...) @grep_read_lock()
  %6 = load %struct.grep_source*, %struct.grep_source** %3, align 8
  %7 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.grep_source*, %struct.grep_source** %3, align 8
  %10 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %9, i32 0, i32 3
  %11 = call i32 @read_object_file(i32 %8, i32* %4, i32* %10)
  %12 = load %struct.grep_source*, %struct.grep_source** %3, align 8
  %13 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = call i32 (...) @grep_read_unlock()
  %15 = load %struct.grep_source*, %struct.grep_source** %3, align 8
  %16 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %1
  %20 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.grep_source*, %struct.grep_source** %3, align 8
  %22 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.grep_source*, %struct.grep_source** %3, align 8
  %25 = getelementptr inbounds %struct.grep_source, %struct.grep_source* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @oid_to_hex(i32 %26)
  %28 = call i32 @error(i32 %20, i32 %23, i8* %27)
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @grep_read_lock(...) #1

declare dso_local i32 @read_object_file(i32, i32*, i32*) #1

declare dso_local i32 @grep_read_unlock(...) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @oid_to_hex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
