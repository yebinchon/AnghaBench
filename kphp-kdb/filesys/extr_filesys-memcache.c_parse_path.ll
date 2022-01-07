; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-memcache.c_parse_path.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-memcache.c_parse_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@value_buff = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_path(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  %5 = load %struct.connection*, %struct.connection** %3, align 8
  %6 = getelementptr inbounds %struct.connection, %struct.connection* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @read_in(i32 %7, i32* %4, i32 4)
  %9 = sext i32 %8 to i64
  %10 = icmp ne i64 %9, 4
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.connection*, %struct.connection** %3, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** @value_buff, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @read_in(i32 %15, i32* %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 -2, i32* %2, align 4
  br label %27

22:                                               ; preds = %12
  %23 = load i32*, i32** @value_buff, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 0, i32* %26, align 4
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %22, %21, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @read_in(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
