; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/paride/extr_pg.c_pg_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/paride/extr_pg.c_pg_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg = type { i32, i32 }

@STAT_BUSY = common dso_local global i32 0, align 4
@STAT_DRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"before command\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"command DRQ\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: command phase error\0A\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: Command sent, dlen=%d packet= \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pg*, i8*, i32, i64)* @pg_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_command(%struct.pg* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.pg* %0, %struct.pg** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load %struct.pg*, %struct.pg** %6, align 8
  %12 = getelementptr inbounds %struct.pg, %struct.pg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pi_connect(i32 %13)
  %15 = load %struct.pg*, %struct.pg** %6, align 8
  %16 = load %struct.pg*, %struct.pg** %6, align 8
  %17 = call i32 @DRIVE(%struct.pg* %16)
  %18 = call i32 @write_reg(%struct.pg* %15, i32 6, i32 %17)
  %19 = load %struct.pg*, %struct.pg** %6, align 8
  %20 = load i32, i32* @STAT_BUSY, align 4
  %21 = load i32, i32* @STAT_DRQ, align 4
  %22 = or i32 %20, %21
  %23 = load i64, i64* %9, align 8
  %24 = call i64 @pg_wait(%struct.pg* %19, i32 %22, i32 0, i64 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %86

27:                                               ; preds = %4
  %28 = load %struct.pg*, %struct.pg** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = srem i32 %29, 256
  %31 = call i32 @write_reg(%struct.pg* %28, i32 4, i32 %30)
  %32 = load %struct.pg*, %struct.pg** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sdiv i32 %33, 256
  %35 = call i32 @write_reg(%struct.pg* %32, i32 5, i32 %34)
  %36 = load %struct.pg*, %struct.pg** %6, align 8
  %37 = call i32 @write_reg(%struct.pg* %36, i32 7, i32 160)
  %38 = load %struct.pg*, %struct.pg** %6, align 8
  %39 = load i32, i32* @STAT_BUSY, align 4
  %40 = load i32, i32* @STAT_DRQ, align 4
  %41 = load i64, i64* %9, align 8
  %42 = call i64 @pg_wait(%struct.pg* %38, i32 %39, i32 %40, i64 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %27
  br label %86

45:                                               ; preds = %27
  %46 = load %struct.pg*, %struct.pg** %6, align 8
  %47 = call i32 @read_reg(%struct.pg* %46, i32 2)
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct.pg*, %struct.pg** %6, align 8
  %51 = getelementptr inbounds %struct.pg, %struct.pg* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %86

54:                                               ; preds = %45
  %55 = load %struct.pg*, %struct.pg** %6, align 8
  %56 = getelementptr inbounds %struct.pg, %struct.pg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @pi_write_block(i32 %57, i8* %58, i32 12)
  %60 = load i32, i32* @verbose, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %85

62:                                               ; preds = %54
  %63 = load %struct.pg*, %struct.pg** %6, align 8
  %64 = getelementptr inbounds %struct.pg, %struct.pg* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %65, i32 %66)
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %80, %62
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 12
  br i1 %70, label %71, label %83

71:                                               ; preds = %68
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = and i32 %77, 255
  %79 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %71
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %68

83:                                               ; preds = %68
  %84 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %54
  store i32 0, i32* %5, align 4
  br label %91

86:                                               ; preds = %49, %44, %26
  %87 = load %struct.pg*, %struct.pg** %6, align 8
  %88 = getelementptr inbounds %struct.pg, %struct.pg* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @pi_disconnect(i32 %89)
  store i32 -1, i32* %5, align 4
  br label %91

91:                                               ; preds = %86, %85
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @pi_connect(i32) #1

declare dso_local i32 @write_reg(%struct.pg*, i32, i32) #1

declare dso_local i32 @DRIVE(%struct.pg*) #1

declare dso_local i64 @pg_wait(%struct.pg*, i32, i32, i64, i8*) #1

declare dso_local i32 @read_reg(%struct.pg*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @pi_write_block(i32, i8*, i32) #1

declare dso_local i32 @pi_disconnect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
