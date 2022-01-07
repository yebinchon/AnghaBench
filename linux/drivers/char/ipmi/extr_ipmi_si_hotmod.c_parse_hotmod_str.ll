; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_hotmod.c_parse_hotmod_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_hotmod.c_parse_hotmod_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_plat_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IPMI_PLAT_IF_SI = common dso_local global i32 0, align 4
@hotmod_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@hotmod_si = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"interface type\00", align 1
@hotmod_as = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"address space\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Invalid hotmod address '%s': %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"rsp\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"rsi\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"rsh\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ipmb\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Invalid hotmod option '%s'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SI_HOTMOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.ipmi_plat_data*)* @parse_hotmod_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_hotmod_str(i8* %0, i32* %1, %struct.ipmi_plat_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ipmi_plat_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.ipmi_plat_data* %2, %struct.ipmi_plat_data** %7, align 8
  %12 = load i32, i32* @IPMI_PLAT_IF_SI, align 4
  %13 = load %struct.ipmi_plat_data*, %struct.ipmi_plat_data** %7, align 8
  %14 = getelementptr inbounds %struct.ipmi_plat_data, %struct.ipmi_plat_data* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @hotmod_ops, align 4
  %16 = call i32 @parse_str(i32 %15, i32* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %5)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %171

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @hotmod_si, align 4
  %25 = call i32 @parse_str(i32 %24, i32* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %5)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %171

30:                                               ; preds = %21
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.ipmi_plat_data*, %struct.ipmi_plat_data** %7, align 8
  %33 = getelementptr inbounds %struct.ipmi_plat_data, %struct.ipmi_plat_data* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @hotmod_as, align 4
  %35 = call i32 @parse_str(i32 %34, i32* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %5)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %171

40:                                               ; preds = %30
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.ipmi_plat_data*, %struct.ipmi_plat_data** %7, align 8
  %43 = getelementptr inbounds %struct.ipmi_plat_data, %struct.ipmi_plat_data* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = call i8* @strchr(i8* %44, i8 signext 44)
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i8*, i8** %8, align 8
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  br label %52

52:                                               ; preds = %48, %40
  %53 = load i8*, i8** %5, align 8
  %54 = load %struct.ipmi_plat_data*, %struct.ipmi_plat_data** %7, align 8
  %55 = getelementptr inbounds %struct.ipmi_plat_data, %struct.ipmi_plat_data* %54, i32 0, i32 8
  %56 = call i32 @kstrtoul(i8* %53, i32 0, i32* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %60, i32 %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %171

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %160, %145, %130, %115, %100, %64
  %66 = load i8*, i8** %8, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %167

68:                                               ; preds = %65
  %69 = load i8*, i8** %8, align 8
  store i8* %69, i8** %5, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i8* @strchr(i8* %70, i8 signext 44)
  store i8* %71, i8** %8, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i8*, i8** %8, align 8
  store i8 0, i8* %75, align 1
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %8, align 8
  br label %78

78:                                               ; preds = %74, %68
  %79 = load i8*, i8** %5, align 8
  %80 = call i8* @strchr(i8* %79, i8 signext 61)
  store i8* %80, i8** %9, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i8*, i8** %9, align 8
  store i8 0, i8* %84, align 1
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %9, align 8
  br label %87

87:                                               ; preds = %83, %78
  %88 = load i8*, i8** %5, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load %struct.ipmi_plat_data*, %struct.ipmi_plat_data** %7, align 8
  %91 = getelementptr inbounds %struct.ipmi_plat_data, %struct.ipmi_plat_data* %90, i32 0, i32 7
  %92 = call i32 @check_hotmod_int_op(i8* %88, i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %4, align 4
  br label %171

97:                                               ; preds = %87
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %65

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %101
  %103 = load i8*, i8** %5, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = load %struct.ipmi_plat_data*, %struct.ipmi_plat_data** %7, align 8
  %106 = getelementptr inbounds %struct.ipmi_plat_data, %struct.ipmi_plat_data* %105, i32 0, i32 6
  %107 = call i32 @check_hotmod_int_op(i8* %103, i8* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %4, align 4
  br label %171

112:                                              ; preds = %102
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %65

116:                                              ; preds = %112
  br label %117

117:                                              ; preds = %116
  %118 = load i8*, i8** %5, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = load %struct.ipmi_plat_data*, %struct.ipmi_plat_data** %7, align 8
  %121 = getelementptr inbounds %struct.ipmi_plat_data, %struct.ipmi_plat_data* %120, i32 0, i32 5
  %122 = call i32 @check_hotmod_int_op(i8* %118, i8* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %4, align 4
  br label %171

127:                                              ; preds = %117
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %65

131:                                              ; preds = %127
  br label %132

132:                                              ; preds = %131
  %133 = load i8*, i8** %5, align 8
  %134 = load i8*, i8** %9, align 8
  %135 = load %struct.ipmi_plat_data*, %struct.ipmi_plat_data** %7, align 8
  %136 = getelementptr inbounds %struct.ipmi_plat_data, %struct.ipmi_plat_data* %135, i32 0, i32 4
  %137 = call i32 @check_hotmod_int_op(i8* %133, i8* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32* %136)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %132
  %141 = load i32, i32* %10, align 4
  store i32 %141, i32* %4, align 4
  br label %171

142:                                              ; preds = %132
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  br label %65

146:                                              ; preds = %142
  br label %147

147:                                              ; preds = %146
  %148 = load i8*, i8** %5, align 8
  %149 = load i8*, i8** %9, align 8
  %150 = load %struct.ipmi_plat_data*, %struct.ipmi_plat_data** %7, align 8
  %151 = getelementptr inbounds %struct.ipmi_plat_data, %struct.ipmi_plat_data* %150, i32 0, i32 3
  %152 = call i32 @check_hotmod_int_op(i8* %148, i8* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32* %151)
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %147
  %156 = load i32, i32* %10, align 4
  store i32 %156, i32* %4, align 4
  br label %171

157:                                              ; preds = %147
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  br label %65

161:                                              ; preds = %157
  br label %162

162:                                              ; preds = %161
  %163 = load i8*, i8** %5, align 8
  %164 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %163)
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %4, align 4
  br label %171

167:                                              ; preds = %65
  %168 = load i32, i32* @SI_HOTMOD, align 4
  %169 = load %struct.ipmi_plat_data*, %struct.ipmi_plat_data** %7, align 8
  %170 = getelementptr inbounds %struct.ipmi_plat_data, %struct.ipmi_plat_data* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 4
  store i32 0, i32* %4, align 4
  br label %171

171:                                              ; preds = %167, %162, %155, %140, %125, %110, %95, %59, %38, %28, %19
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i32 @parse_str(i32, i32*, i8*, i8**) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @kstrtoul(i8*, i32, i32*) #1

declare dso_local i32 @pr_warn(i8*, i8*, ...) #1

declare dso_local i32 @check_hotmod_int_op(i8*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
