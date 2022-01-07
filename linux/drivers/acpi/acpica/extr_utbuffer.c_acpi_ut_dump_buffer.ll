; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utbuffer.c_acpi_ut_dump_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utbuffer.c_acpi_ut_dump_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"Null Buffer Pointer in DumpBuffer!\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%8.4X: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%04X \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%08X \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%08X\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"// \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ut_dump_buffer(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %4
  %16 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %157

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %17
  store i32 131, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %20
  br label %26

26:                                               ; preds = %152, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %156

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %109, %44, %30
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 16
  br i1 %37, label %38, label %113

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* %6, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 %45, 2
  %47 = add nsw i32 %46, 1
  %48 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %10, align 4
  br label %35

52:                                               ; preds = %38
  %53 = load i32, i32* %7, align 4
  switch i32 %53, label %55 [
    i32 131, label %54
    i32 128, label %65
    i32 130, label %76
    i32 129, label %87
  ]

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %52, %54
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %58, %60
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  br label %109

65:                                               ; preds = %52
  %66 = load i32*, i32** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %68, %70
  %72 = getelementptr inbounds i32, i32* %66, i64 %71
  %73 = call i32 @ACPI_MOVE_16_TO_32(i32* %11, i32* %72)
  %74 = load i32, i32* %11, align 4
  %75 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  br label %109

76:                                               ; preds = %52
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 %79, %81
  %83 = getelementptr inbounds i32, i32* %77, i64 %82
  %84 = call i32 @ACPI_MOVE_32_TO_32(i32* %11, i32* %83)
  %85 = load i32, i32* %11, align 4
  %86 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %85)
  br label %109

87:                                               ; preds = %52
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 %90, %92
  %94 = getelementptr inbounds i32, i32* %88, i64 %93
  %95 = call i32 @ACPI_MOVE_32_TO_32(i32* %11, i32* %94)
  %96 = load i32, i32* %11, align 4
  %97 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %96)
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %100, %102
  %104 = add i64 %103, 4
  %105 = getelementptr inbounds i32, i32* %98, i64 %104
  %106 = call i32 @ACPI_MOVE_32_TO_32(i32* %11, i32* %105)
  %107 = load i32, i32* %11, align 4
  %108 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %87, %76, %65, %55
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %10, align 4
  br label %35

113:                                              ; preds = %35
  %114 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %149, %113
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %116, 16
  br i1 %117, label %118, label %152

118:                                              ; preds = %115
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i32, i32* %6, align 4
  %123 = icmp sge i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %157

126:                                              ; preds = %118
  %127 = load i32, i32* %10, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %126
  %132 = load i32*, i32** %5, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = add i64 %134, %136
  %138 = getelementptr inbounds i32, i32* %132, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = call i64 @isprint(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %131
  %144 = load i32, i32* %12, align 4
  %145 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %144)
  br label %148

146:                                              ; preds = %131
  %147 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %143
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %10, align 4
  br label %115

152:                                              ; preds = %115
  %153 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 16
  store i32 %155, i32* %9, align 4
  br label %26

156:                                              ; preds = %26
  br label %157

157:                                              ; preds = %156, %124, %15
  ret void
}

declare dso_local i32 @acpi_os_printf(i8*, ...) #1

declare dso_local i32 @ACPI_MOVE_16_TO_32(i32*, i32*) #1

declare dso_local i32 @ACPI_MOVE_32_TO_32(i32*, i32*) #1

declare dso_local i64 @isprint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
