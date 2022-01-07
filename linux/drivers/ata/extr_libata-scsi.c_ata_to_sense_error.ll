; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_to_sense_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-scsi.c_ata_to_sense_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ata_to_sense_error.sense_table = internal constant [14 x [4 x i8]] [[4 x i8] c"\D1\86\00\00", [4 x i8] c"\D0\86\00\00", [4 x i8] c"a\85\00\00", [4 x i8] c"\84\86G\00", [4 x i8] c"7\82\04\00", [4 x i8] c"\09\82\04\00", [4 x i8] c"\01\83\13\00", [4 x i8] c"\02\85\00\00", [4 x i8] c"\08\82\04\00", [4 x i8] c"\10\84!\00", [4 x i8] c" \80(\00", [4 x i8] c"@\83\11\04", [4 x i8] c"\80\83\11\04", [4 x i8] c"\FF\FF\FF\FF"], align 16
@ata_to_sense_error.stat_table = internal constant [6 x [4 x i8]] [[4 x i8] c"\80\86G\00", [4 x i8] c"@\84!\04", [4 x i8] c" \85D\00", [4 x i8] c"\08\86G\00", [4 x i8] c"\04\81\11\00", [4 x i8] c"\FF\FF\FF\FF"], align 16
@ATA_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"ata%u: translated ATA stat/err 0x%02x/%02x to SCSI SK/ASC/ASCQ 0x%x/%02x/%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32*, i32)* @ata_to_sense_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_to_sense_error(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @ATA_BUSY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %7
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %20, %7
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %76

24:                                               ; preds = %21
  store i32 0, i32* %15, align 4
  br label %25

25:                                               ; preds = %72, %24
  %26 = load i32, i32* %15, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [14 x [4 x i8]], [14 x [4 x i8]]* @ata_to_sense_error.sense_table, i64 0, i64 %27
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %28, i64 0, i64 0
  %30 = load i8, i8* %29, align 4
  %31 = zext i8 %30 to i32
  %32 = icmp ne i32 %31, 255
  br i1 %32, label %33, label %75

33:                                               ; preds = %25
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [14 x [4 x i8]], [14 x [4 x i8]]* @ata_to_sense_error.sense_table, i64 0, i64 %35
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %36, i64 0, i64 0
  %38 = load i8, i8* %37, align 4
  %39 = zext i8 %38 to i32
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [14 x [4 x i8]], [14 x [4 x i8]]* @ata_to_sense_error.sense_table, i64 0, i64 %43
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %44, i64 0, i64 0
  %46 = load i8, i8* %45, align 4
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %41, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %33
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [14 x [4 x i8]], [14 x [4 x i8]]* @ata_to_sense_error.sense_table, i64 0, i64 %51
  %53 = getelementptr inbounds [4 x i8], [4 x i8]* %52, i64 0, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [14 x [4 x i8]], [14 x [4 x i8]]* @ata_to_sense_error.sense_table, i64 0, i64 %58
  %60 = getelementptr inbounds [4 x i8], [4 x i8]* %59, i64 0, i64 2
  %61 = load i8, i8* %60, align 2
  %62 = zext i8 %61 to i32
  %63 = load i32*, i32** %12, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [14 x [4 x i8]], [14 x [4 x i8]]* @ata_to_sense_error.sense_table, i64 0, i64 %65
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* %66, i64 0, i64 3
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = load i32*, i32** %13, align 8
  store i32 %69, i32* %70, align 4
  br label %125

71:                                               ; preds = %33
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  br label %25

75:                                               ; preds = %25
  br label %76

76:                                               ; preds = %75, %21
  store i32 0, i32* %15, align 4
  br label %77

77:                                               ; preds = %118, %76
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [6 x [4 x i8]], [6 x [4 x i8]]* @ata_to_sense_error.stat_table, i64 0, i64 %79
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* %80, i64 0, i64 0
  %82 = load i8, i8* %81, align 4
  %83 = zext i8 %82 to i32
  %84 = icmp ne i32 %83, 255
  br i1 %84, label %85, label %121

85:                                               ; preds = %77
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [6 x [4 x i8]], [6 x [4 x i8]]* @ata_to_sense_error.stat_table, i64 0, i64 %87
  %89 = getelementptr inbounds [4 x i8], [4 x i8]* %88, i64 0, i64 0
  %90 = load i8, i8* %89, align 4
  %91 = zext i8 %90 to i32
  %92 = load i32, i32* %9, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %85
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [6 x [4 x i8]], [6 x [4 x i8]]* @ata_to_sense_error.stat_table, i64 0, i64 %97
  %99 = getelementptr inbounds [4 x i8], [4 x i8]* %98, i64 0, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = load i32*, i32** %11, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [6 x [4 x i8]], [6 x [4 x i8]]* @ata_to_sense_error.stat_table, i64 0, i64 %104
  %106 = getelementptr inbounds [4 x i8], [4 x i8]* %105, i64 0, i64 2
  %107 = load i8, i8* %106, align 2
  %108 = zext i8 %107 to i32
  %109 = load i32*, i32** %12, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [6 x [4 x i8]], [6 x [4 x i8]]* @ata_to_sense_error.stat_table, i64 0, i64 %111
  %113 = getelementptr inbounds [4 x i8], [4 x i8]* %112, i64 0, i64 3
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = load i32*, i32** %13, align 8
  store i32 %115, i32* %116, align 4
  br label %125

117:                                              ; preds = %85
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %15, align 4
  br label %77

121:                                              ; preds = %77
  %122 = load i32*, i32** %11, align 8
  store i32 134, i32* %122, align 4
  %123 = load i32*, i32** %12, align 8
  store i32 0, i32* %123, align 4
  %124 = load i32*, i32** %13, align 8
  store i32 0, i32* %124, align 4
  br label %125

125:                                              ; preds = %121, %95, %49
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load i32*, i32** %11, align 8
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %12, align 8
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %13, align 8
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @pr_err(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %130, i32 %131, i32 %133, i32 %135, i32 %137)
  br label %139

139:                                              ; preds = %128, %125
  ret void
}

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
