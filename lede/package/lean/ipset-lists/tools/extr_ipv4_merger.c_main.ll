; ModuleID = '/home/carl/AnghaBench/lede/package/lean/ipset-lists/tools/extr_ipv4_merger.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/ipset-lists/tools/extr_ipv4_merger.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_open_data = type { i32 }

@stdin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sa_open_data*, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call %struct.sa_open_data* (...) @salist_open()
  store %struct.sa_open_data* %9, %struct.sa_open_data** %6, align 8
  br label %10

10:                                               ; preds = %49, %48, %2
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %12 = load i32, i32* @stdin, align 4
  %13 = call i64 @fgets(i8* %11, i32 128, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %10
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load i64, i64* %8, align 8
  %22 = sub i64 %21, 1
  %23 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %28, -1
  store i64 %29, i64* %8, align 8
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %29
  store i8 0, i8* %30, align 1
  br label %31

31:                                               ; preds = %27, %20, %15
  %32 = load i64, i64* %8, align 8
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i64, i64* %8, align 8
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 13
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, -1
  store i64 %43, i64* %8, align 8
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %43
  store i8 0, i8* %44, align 1
  br label %45

45:                                               ; preds = %41, %34, %31
  %46 = load i64, i64* %8, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %10

49:                                               ; preds = %45
  %50 = load %struct.sa_open_data*, %struct.sa_open_data** %6, align 8
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %52 = call i32 @salist_cmd_parse(%struct.sa_open_data* %50, i8* %51, i32 0)
  br label %10

53:                                               ; preds = %10
  %54 = load %struct.sa_open_data*, %struct.sa_open_data** %6, align 8
  %55 = call i32 @salist_close(%struct.sa_open_data* %54)
  %56 = load %struct.sa_open_data*, %struct.sa_open_data** %6, align 8
  %57 = call i32 @sa_open_data_dump(%struct.sa_open_data* %56)
  ret i32 0
}

declare dso_local %struct.sa_open_data* @salist_open(...) #1

declare dso_local i64 @fgets(i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @salist_cmd_parse(%struct.sa_open_data*, i8*, i32) #1

declare dso_local i32 @salist_close(%struct.sa_open_data*) #1

declare dso_local i32 @sa_open_data_dump(%struct.sa_open_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
