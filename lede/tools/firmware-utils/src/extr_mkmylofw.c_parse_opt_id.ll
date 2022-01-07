; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkmylofw.c_parse_opt_id.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkmylofw.c_parse_opt_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@MAX_ARG_LEN = common dso_local global i32 0, align 4
@MAX_ARG_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"vendor id is missing from -%c %s\00", align 1
@fw_header = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid vendor id: %s\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"vendor id is set to 0x%04X\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"device id is missing from -%c %s\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"invalid device id: %s\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"device id is set to 0x%04X\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"invalid sub vendor id: %s\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"sub vendor id is set to 0x%04X\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"invalid sub device id: %s\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"sub device id is set to 0x%04X\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"invalid revision number: %s\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"board revision is set to 0x%08X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_opt_id(i8 signext %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @MAX_ARG_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @MAX_ARG_COUNT, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8*, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %19 = load i8, i8* %4, align 1
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @required_arg(i8 signext %19, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %122

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @parse_arg(i8* %25, i8* %15, i8** %18)
  store i32 %26, i32* %9, align 4
  %27 = getelementptr inbounds i8*, i8** %18, i64 0
  %28 = load i8*, i8** %27, align 16
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i64 @is_empty_arg(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i8, i8* %4, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %35)
  br label %122

37:                                               ; preds = %24
  %38 = load i8*, i8** %10, align 8
  %39 = call i64 @str2u16(i8* %38, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 4))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %122

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 4), align 8
  %47 = call i32 @dbgmsg(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  %48 = getelementptr inbounds i8*, i8** %18, i64 1
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %10, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i64 @is_empty_arg(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load i8, i8* %4, align 1
  %55 = sext i8 %54 to i32
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %55, i8* %56)
  br label %122

58:                                               ; preds = %45
  %59 = load i8*, i8** %10, align 8
  %60 = call i64 @str2u16(i8* %59, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 2))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  br label %122

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 2), align 8
  %68 = call i32 @dbgmsg(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 %67)
  %69 = getelementptr inbounds i8*, i8** %18, i64 2
  %70 = load i8*, i8** %69, align 16
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = call i64 @is_empty_arg(i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 4), align 8
  store i64 %75, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 3), align 8
  br label %84

76:                                               ; preds = %66
  %77 = load i8*, i8** %10, align 8
  %78 = call i64 @str2u16(i8* %77, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 3))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %81)
  br label %122

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %74
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 3), align 8
  %86 = call i32 @dbgmsg(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i64 %85)
  %87 = getelementptr inbounds i8*, i8** %18, i64 3
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %10, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = call i64 @is_empty_arg(i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 2), align 8
  store i64 %93, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 1), align 8
  br label %102

94:                                               ; preds = %84
  %95 = load i8*, i8** %10, align 8
  %96 = call i64 @str2u16(i8* %95, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 1))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %99)
  br label %122

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %92
  %103 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 1), align 8
  %104 = call i32 @dbgmsg(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i64 %103)
  %105 = getelementptr inbounds i8*, i8** %18, i64 4
  %106 = load i8*, i8** %105, align 16
  store i8* %106, i8** %10, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = call i64 @is_empty_arg(i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 0), align 8
  br label %119

111:                                              ; preds = %102
  %112 = load i8*, i8** %5, align 8
  %113 = call i64 @str2u32(i8* %112, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 0))
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i8*, i8** %10, align 8
  %117 = call i32 (i32, i8*, ...) @errmsg(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8* %116)
  br label %122

118:                                              ; preds = %111
  br label %119

119:                                              ; preds = %118, %110
  %120 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fw_header, i32 0, i32 0), align 8
  %121 = call i32 @dbgmsg(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i64 %120)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %123

122:                                              ; preds = %115, %98, %80, %62, %53, %41, %32, %23
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %123

123:                                              ; preds = %122, %119
  %124 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @required_arg(i8 signext, i8*) #2

declare dso_local i32 @parse_arg(i8*, i8*, i8**) #2

declare dso_local i64 @is_empty_arg(i8*) #2

declare dso_local i32 @errmsg(i32, i8*, ...) #2

declare dso_local i64 @str2u16(i8*, i64*) #2

declare dso_local i32 @dbgmsg(i32, i8*, i64) #2

declare dso_local i64 @str2u32(i8*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
