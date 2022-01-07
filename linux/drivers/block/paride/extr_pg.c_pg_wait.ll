; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pg.c_pg_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pg.c_pg_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg = type { i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@PG_SPIN = common dso_local global i32 0, align 4
@PG_SPIN_DEL = common dso_local global i32 0, align 4
@STAT_ERR = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: %s: stat=0x%x err=0x%x phase=%d%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" timeout\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pg*, i32, i32, i64, i8*)* @pg_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_wait(%struct.pg* %0, i32 %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pg* %0, %struct.pg** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load %struct.pg*, %struct.pg** %7, align 8
  %19 = getelementptr inbounds %struct.pg, %struct.pg* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %51, %5
  %21 = load %struct.pg*, %struct.pg** %7, align 8
  %22 = call i32 @status_reg(%struct.pg* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29, %20
  %35 = load i32, i32* @jiffies, align 4
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @time_before(i32 %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %34, %29, %26
  %40 = phi i1 [ false, %29 ], [ false, %26 ], [ %38, %34 ]
  br i1 %40, label %41, label %52

41:                                               ; preds = %39
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* @PG_SPIN, align 4
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @PG_SPIN_DEL, align 4
  %48 = call i32 @udelay(i32 %47)
  br label %51

49:                                               ; preds = %41
  %50 = call i32 @pg_sleep(i32 1)
  br label %51

51:                                               ; preds = %49, %46
  br label %20

52:                                               ; preds = %39
  %53 = load i32, i32* @jiffies, align 4
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @time_after_eq(i32 %53, i64 %54)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @STAT_ERR, align 4
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %57, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %17, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %99

65:                                               ; preds = %62, %52
  %66 = load %struct.pg*, %struct.pg** %7, align 8
  %67 = call i32 @read_reg(%struct.pg* %66, i32 7)
  store i32 %67, i32* %15, align 4
  %68 = load %struct.pg*, %struct.pg** %7, align 8
  %69 = call i32 @read_reg(%struct.pg* %68, i32 1)
  store i32 %69, i32* %14, align 4
  %70 = load %struct.pg*, %struct.pg** %7, align 8
  %71 = call i32 @read_reg(%struct.pg* %70, i32 2)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* @verbose, align 4
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %87

74:                                               ; preds = %65
  %75 = load %struct.pg*, %struct.pg** %7, align 8
  %76 = getelementptr inbounds %struct.pg, %struct.pg* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %11, align 8
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %86 = call i32 @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %77, i8* %78, i32 %79, i32 %80, i32 %81, i8* %85)
  br label %87

87:                                               ; preds = %74, %65
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %14, align 4
  %92 = or i32 %91, 256
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %14, align 4
  %95 = ashr i32 %94, 4
  %96 = and i32 %95, 255
  %97 = load %struct.pg*, %struct.pg** %7, align 8
  %98 = getelementptr inbounds %struct.pg, %struct.pg* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  store i32 -1, i32* %6, align 4
  br label %100

99:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %99, %93
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @status_reg(%struct.pg*) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pg_sleep(i32) #1

declare dso_local i32 @time_after_eq(i32, i64) #1

declare dso_local i32 @read_reg(%struct.pg*, i32) #1

declare dso_local i32 @printk(i8*, i32, i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
