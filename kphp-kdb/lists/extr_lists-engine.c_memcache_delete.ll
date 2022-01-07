; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_memcache_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_memcache_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32 }

@C_INTIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"DELETED\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"NOT_FOUND\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_delete(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @C_INTIMEOUT, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.connection*, %struct.connection** %5, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @eat_at(i8* %17, i32 %18, i8** %8, i32* %9)
  %20 = load %struct.connection*, %struct.connection** %5, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @exec_delete(%struct.connection* %20, i8* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, -2
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.connection*, %struct.connection** %5, align 8
  %28 = call i64 @memcache_wait(%struct.connection* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %43

31:                                               ; preds = %26, %3
  %32 = load i32, i32* %10, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.connection*, %struct.connection** %5, align 8
  %36 = getelementptr inbounds %struct.connection, %struct.connection* %35, i32 0, i32 0
  %37 = call i32 @write_out(i32* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  br label %42

38:                                               ; preds = %31
  %39 = load %struct.connection*, %struct.connection** %5, align 8
  %40 = getelementptr inbounds %struct.connection, %struct.connection* %39, i32 0, i32 0
  %41 = call i32 @write_out(i32* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 11)
  br label %42

42:                                               ; preds = %38, %34
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %30
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @eat_at(i8*, i32, i8**, i32*) #1

declare dso_local i32 @exec_delete(%struct.connection*, i8*, i32) #1

declare dso_local i64 @memcache_wait(%struct.connection*) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
