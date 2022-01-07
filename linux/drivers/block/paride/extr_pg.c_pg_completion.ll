; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pg.c_pg_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pg.c_pg_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg = type { i32, i64, i32 }

@STAT_BUSY = common dso_local global i32 0, align 4
@STAT_DRQ = common dso_local global i32 0, align 4
@STAT_READY = common dso_local global i32 0, align 4
@STAT_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"completion\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"%s: %s %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pg*, i8*, i64)* @pg_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_completion(%struct.pg* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.pg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pg* %0, %struct.pg** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.pg*, %struct.pg** %4, align 8
  %12 = load i32, i32* @STAT_BUSY, align 4
  %13 = load i32, i32* @STAT_DRQ, align 4
  %14 = load i32, i32* @STAT_READY, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @STAT_ERR, align 4
  %17 = or i32 %15, %16
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @pg_wait(%struct.pg* %11, i32 %12, i32 %17, i64 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %7, align 4
  %20 = load %struct.pg*, %struct.pg** %4, align 8
  %21 = getelementptr inbounds %struct.pg, %struct.pg* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %73, %3
  %23 = load %struct.pg*, %struct.pg** %4, align 8
  %24 = call i32 @read_reg(%struct.pg* %23, i32 7)
  %25 = load i32, i32* @STAT_DRQ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %96

28:                                               ; preds = %22
  %29 = load %struct.pg*, %struct.pg** %4, align 8
  %30 = call i32 @read_reg(%struct.pg* %29, i32 4)
  %31 = load %struct.pg*, %struct.pg** %4, align 8
  %32 = call i32 @read_reg(%struct.pg* %31, i32 5)
  %33 = mul nsw i32 256, %32
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 3
  %37 = and i32 %36, 65532
  store i32 %37, i32* %9, align 4
  %38 = load %struct.pg*, %struct.pg** %4, align 8
  %39 = call i32 @read_reg(%struct.pg* %38, i32 2)
  %40 = and i32 %39, 3
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %28
  %44 = load %struct.pg*, %struct.pg** %4, align 8
  %45 = getelementptr inbounds %struct.pg, %struct.pg* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @pi_write_block(i32 %46, i8* %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %28
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load %struct.pg*, %struct.pg** %4, align 8
  %55 = getelementptr inbounds %struct.pg, %struct.pg* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @pi_read_block(i32 %56, i8* %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %50
  %61 = load i32, i32* @verbose, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load %struct.pg*, %struct.pg** %4, align 8
  %65 = getelementptr inbounds %struct.pg, %struct.pg* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %66, i8* %70, i32 %71)
  br label %73

73:                                               ; preds = %63, %60
  %74 = load i32, i32* %10, align 4
  %75 = sub nsw i32 1, %74
  %76 = load i32, i32* %8, align 4
  %77 = mul nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = load %struct.pg*, %struct.pg** %4, align 8
  %80 = getelementptr inbounds %struct.pg, %struct.pg* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, %78
  store i64 %82, i64* %80, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i8*, i8** %5, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %5, align 8
  %87 = load %struct.pg*, %struct.pg** %4, align 8
  %88 = load i32, i32* @STAT_BUSY, align 4
  %89 = load i32, i32* @STAT_DRQ, align 4
  %90 = load i32, i32* @STAT_READY, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @STAT_ERR, align 4
  %93 = or i32 %91, %92
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @pg_wait(%struct.pg* %87, i32 %88, i32 %93, i64 %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %95, i32* %7, align 4
  br label %22

96:                                               ; preds = %22
  %97 = load %struct.pg*, %struct.pg** %4, align 8
  %98 = getelementptr inbounds %struct.pg, %struct.pg* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @pi_disconnect(i32 %99)
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i32 @pg_wait(%struct.pg*, i32, i32, i64, i8*) #1

declare dso_local i32 @read_reg(%struct.pg*, i32) #1

declare dso_local i32 @pi_write_block(i32, i8*, i32) #1

declare dso_local i32 @pi_read_block(i32, i8*, i32) #1

declare dso_local i32 @printk(i8*, i32, i8*, i32) #1

declare dso_local i32 @pi_disconnect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
