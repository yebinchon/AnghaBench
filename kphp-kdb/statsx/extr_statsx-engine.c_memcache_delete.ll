; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-engine.c_memcache_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-engine.c_memcache_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"counter%d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"DELETED\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_delete(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @get_at_prefix_length(i8* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8* %16, i8** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @sscanf(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %9)
  %22 = icmp sge i32 %21, 1
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @delete_counter(i32 %24, i32 0)
  %26 = load %struct.connection*, %struct.connection** %5, align 8
  %27 = getelementptr inbounds %struct.connection, %struct.connection* %26, i32 0, i32 0
  %28 = call i32 @write_out(i32* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 9)
  store i32 0, i32* %4, align 4
  br label %32

29:                                               ; preds = %3
  %30 = load %struct.connection*, %struct.connection** %5, align 8
  %31 = call i32 @not_found(%struct.connection* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @get_at_prefix_length(i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @delete_counter(i32, i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i32 @not_found(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
