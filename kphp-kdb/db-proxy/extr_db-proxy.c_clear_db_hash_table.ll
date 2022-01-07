; ModuleID = '/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_clear_db_hash_table.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/db-proxy/extr_db-proxy.c_clear_db_hash_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db_table = type { i8*, i64, i32 }

@HASH_PRIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_db_hash_table(%struct.db_table* %0) #0 {
  %2 = alloca %struct.db_table*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.db_table*, align 8
  store %struct.db_table* %0, %struct.db_table** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %43, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @HASH_PRIME, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %46

9:                                                ; preds = %5
  %10 = load %struct.db_table*, %struct.db_table** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.db_table, %struct.db_table* %10, i64 %12
  store %struct.db_table* %13, %struct.db_table** %4, align 8
  %14 = load %struct.db_table*, %struct.db_table** %4, align 8
  %15 = getelementptr inbounds %struct.db_table, %struct.db_table* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %9
  %19 = load %struct.db_table*, %struct.db_table** %4, align 8
  %20 = getelementptr inbounds %struct.db_table, %struct.db_table* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.db_table*, %struct.db_table** %4, align 8
  %23 = getelementptr inbounds %struct.db_table, %struct.db_table* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  %26 = call i32 @zfree(i32 %21, i64 %25)
  br label %27

27:                                               ; preds = %18, %9
  %28 = load %struct.db_table*, %struct.db_table** %4, align 8
  %29 = getelementptr inbounds %struct.db_table, %struct.db_table* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.db_table*, %struct.db_table** %4, align 8
  %34 = getelementptr inbounds %struct.db_table, %struct.db_table* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, inttoptr (i64 -1 to i8*)
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.db_table*, %struct.db_table** %4, align 8
  %39 = getelementptr inbounds %struct.db_table, %struct.db_table* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @clear_fwd_chain(i8* %40)
  br label %42

42:                                               ; preds = %37, %32, %27
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %5

46:                                               ; preds = %5
  %47 = load %struct.db_table*, %struct.db_table** %2, align 8
  %48 = call i32 @memset(%struct.db_table* %47, i32 0, i32 4)
  ret void
}

declare dso_local i32 @zfree(i32, i64) #1

declare dso_local i32 @clear_fwd_chain(i8*) #1

declare dso_local i32 @memset(%struct.db_table*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
