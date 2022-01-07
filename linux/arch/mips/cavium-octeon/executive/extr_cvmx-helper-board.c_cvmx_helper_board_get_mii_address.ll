; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper-board.c_cvmx_helper_board_get_mii_address.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-helper-board.c_cvmx_helper_board_get_mii_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@CVMX_HELPER_BOARD_MGMT_IPD_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"cvmx_helper_board_get_mii_address: Unknown board type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_helper_board_get_mii_address(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call %struct.TYPE_2__* (...) @cvmx_sysinfo_get()
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %159 [
    i32 130, label %7
    i32 143, label %8
    i32 141, label %8
    i32 129, label %8
    i32 133, label %8
    i32 139, label %18
    i32 149, label %18
    i32 140, label %18
    i32 154, label %18
    i32 155, label %18
    i32 153, label %18
    i32 137, label %27
    i32 150, label %46
    i32 148, label %47
    i32 147, label %47
    i32 142, label %47
    i32 146, label %70
    i32 145, label %70
    i32 144, label %70
    i32 152, label %85
    i32 131, label %90
    i32 132, label %101
    i32 136, label %101
    i32 134, label %102
    i32 135, label %113
    i32 156, label %123
    i32 151, label %124
    i32 128, label %143
    i32 138, label %153
  ]

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %164

8:                                                ; preds = %1, %1, %1, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sge i32 %9, 16
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 20
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = sub nsw i32 %15, 16
  store i32 %16, i32* %2, align 4
  br label %164

17:                                               ; preds = %11, %8
  store i32 -1, i32* %2, align 4
  br label %164

18:                                               ; preds = %1, %1, %1, %1, %1, %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 4, i32* %2, align 4
  br label %164

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 9, i32* %2, align 4
  br label %164

26:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  br label %164

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  store i32 %34, i32* %2, align 4
  br label %164

35:                                               ; preds = %30, %27
  %36 = load i32, i32* %3, align 4
  %37 = icmp sge i32 %36, 16
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 20
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = sub nsw i32 %42, 16
  %44 = add nsw i32 %43, 4
  store i32 %44, i32* %2, align 4
  br label %164

45:                                               ; preds = %38, %35
  store i32 -1, i32* %2, align 4
  br label %164

46:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %164

47:                                               ; preds = %1, %1, %1
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @CVMX_HELPER_BOARD_MGMT_IPD_PORT, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @CVMX_HELPER_BOARD_MGMT_IPD_PORT, align 4
  %54 = add nsw i32 %53, 2
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @CVMX_HELPER_BOARD_MGMT_IPD_PORT, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %2, align 4
  br label %164

60:                                               ; preds = %51, %47
  %61 = load i32, i32* %3, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* %3, align 4
  %65 = icmp slt i32 %64, 4
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 2
  store i32 %68, i32* %2, align 4
  br label %164

69:                                               ; preds = %63, %60
  store i32 -1, i32* %2, align 4
  br label %164

70:                                               ; preds = %1, %1, %1
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @CVMX_HELPER_BOARD_MGMT_IPD_PORT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %164

75:                                               ; preds = %70
  %76 = load i32, i32* %3, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32, i32* %3, align 4
  %80 = icmp slt i32 %79, 4
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %2, align 4
  br label %164

84:                                               ; preds = %78, %75
  store i32 -1, i32* %2, align 4
  br label %164

85:                                               ; preds = %1
  %86 = load i32, i32* %3, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 4, i32* %2, align 4
  br label %164

89:                                               ; preds = %85
  store i32 -1, i32* %2, align 4
  br label %164

90:                                               ; preds = %1
  %91 = load i32, i32* %3, align 4
  %92 = icmp sge i32 %91, 16
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i32, i32* %3, align 4
  %95 = icmp slt i32 %94, 20
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %3, align 4
  %98 = sub nsw i32 %97, 16
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %2, align 4
  br label %164

100:                                              ; preds = %93, %90
  store i32 -1, i32* %2, align 4
  br label %164

101:                                              ; preds = %1, %1
  store i32 -1, i32* %2, align 4
  br label %164

102:                                              ; preds = %1
  %103 = load i32, i32* %3, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load i32, i32* %3, align 4
  %107 = icmp sle i32 %106, 3
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, 31
  %111 = and i32 %110, 31
  store i32 %111, i32* %2, align 4
  br label %164

112:                                              ; preds = %105, %102
  store i32 -1, i32* %2, align 4
  br label %164

113:                                              ; preds = %1
  %114 = load i32, i32* %3, align 4
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load i32, i32* %3, align 4
  %118 = icmp sle i32 %117, 1
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* %3, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %2, align 4
  br label %164

122:                                              ; preds = %116, %113
  store i32 -1, i32* %2, align 4
  br label %164

123:                                              ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %164

124:                                              ; preds = %1
  %125 = load i32, i32* %3, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i32, i32* %3, align 4
  %129 = icmp sle i32 %128, 3
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i32, i32* %3, align 4
  store i32 %131, i32* %2, align 4
  br label %164

132:                                              ; preds = %127, %124
  %133 = load i32, i32* %3, align 4
  %134 = icmp sge i32 %133, 16
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load i32, i32* %3, align 4
  %137 = icmp sle i32 %136, 19
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32, i32* %3, align 4
  %140 = sub nsw i32 %139, 16
  %141 = add nsw i32 %140, 4
  store i32 %141, i32* %2, align 4
  br label %164

142:                                              ; preds = %135, %132
  store i32 -1, i32* %2, align 4
  br label %164

143:                                              ; preds = %1
  %144 = load i32, i32* %3, align 4
  %145 = icmp sge i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load i32, i32* %3, align 4
  %148 = icmp sle i32 %147, 2
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32, i32* %3, align 4
  %151 = sub nsw i32 7, %150
  store i32 %151, i32* %2, align 4
  br label %164

152:                                              ; preds = %146, %143
  store i32 -1, i32* %2, align 4
  br label %164

153:                                              ; preds = %1
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* @CVMX_HELPER_BOARD_MGMT_IPD_PORT, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  store i32 1, i32* %2, align 4
  br label %164

158:                                              ; preds = %153
  store i32 -1, i32* %2, align 4
  br label %164

159:                                              ; preds = %1
  %160 = call %struct.TYPE_2__* (...) @cvmx_sysinfo_get()
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %162)
  store i32 -1, i32* %2, align 4
  br label %164

164:                                              ; preds = %159, %158, %157, %152, %149, %142, %138, %130, %123, %122, %119, %112, %108, %101, %100, %96, %89, %88, %84, %81, %74, %69, %66, %56, %46, %45, %41, %33, %26, %25, %21, %17, %14, %7
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local %struct.TYPE_2__* @cvmx_sysinfo_get(...) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
