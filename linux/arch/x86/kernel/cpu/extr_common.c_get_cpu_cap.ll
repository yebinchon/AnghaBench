; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_get_cpu_cap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_common.c_get_cpu_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { i32, i32*, i32, i32 }

@CPUID_1_ECX = common dso_local global i64 0, align 8
@CPUID_1_EDX = common dso_local global i64 0, align 8
@CPUID_6_EAX = common dso_local global i64 0, align 8
@CPUID_7_0_EBX = common dso_local global i64 0, align 8
@CPUID_7_ECX = common dso_local global i64 0, align 8
@CPUID_7_EDX = common dso_local global i64 0, align 8
@CPUID_7_1_EAX = common dso_local global i64 0, align 8
@CPUID_D_1_EAX = common dso_local global i64 0, align 8
@CPUID_8000_0001_ECX = common dso_local global i64 0, align 8
@CPUID_8000_0001_EDX = common dso_local global i64 0, align 8
@CPUID_8000_0007_EBX = common dso_local global i64 0, align 8
@CPUID_8000_0008_EBX = common dso_local global i64 0, align 8
@CPUID_8000_000A_EDX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_cpu_cap(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca %struct.cpuinfo_x86*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %2, align 8
  %7 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %8 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sge i32 %9, 1
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = call i32 @cpuid(i32 1, i32* %3, i32* %4, i32* %5, i32* %6)
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %15 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @CPUID_1_ECX, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 %13, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %21 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @CPUID_1_EDX, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 %19, i32* %24, align 4
  br label %25

25:                                               ; preds = %11, %1
  %26 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %27 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %28, 6
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = call i8* @cpuid_eax(i32 6)
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %34 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @CPUID_6_EAX, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 %32, i32* %37, align 4
  br label %38

38:                                               ; preds = %30, %25
  %39 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %40 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %41, 7
  br i1 %42, label %43, label %74

43:                                               ; preds = %38
  %44 = call i32 @cpuid_count(i32 7, i32 0, i32* %3, i32* %4, i32* %5, i32* %6)
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %47 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @CPUID_7_0_EBX, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %45, i32* %50, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %53 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @CPUID_7_ECX, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %51, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %59 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @CPUID_7_EDX, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 %57, i32* %62, align 4
  %63 = load i32, i32* %3, align 4
  %64 = icmp sge i32 %63, 1
  br i1 %64, label %65, label %73

65:                                               ; preds = %43
  %66 = call i32 @cpuid_count(i32 7, i32 1, i32* %3, i32* %4, i32* %5, i32* %6)
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %69 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @CPUID_7_1_EAX, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %67, i32* %72, align 4
  br label %73

73:                                               ; preds = %65, %43
  br label %74

74:                                               ; preds = %73, %38
  %75 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %76 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp sge i32 %77, 13
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = call i32 @cpuid_count(i32 13, i32 1, i32* %3, i32* %4, i32* %5, i32* %6)
  %81 = load i32, i32* %3, align 4
  %82 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %83 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @CPUID_D_1_EAX, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32 %81, i32* %86, align 4
  br label %87

87:                                               ; preds = %79, %74
  %88 = call i8* @cpuid_eax(i32 -2147483648)
  %89 = ptrtoint i8* %88 to i32
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %92 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %3, align 4
  %94 = and i32 %93, -65536
  %95 = icmp eq i32 %94, -2147483648
  br i1 %95, label %96, label %114

96:                                               ; preds = %87
  %97 = load i32, i32* %3, align 4
  %98 = icmp uge i32 %97, -2147483647
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  %100 = call i32 @cpuid(i32 -2147483647, i32* %3, i32* %4, i32* %5, i32* %6)
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %103 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* @CPUID_8000_0001_ECX, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32 %101, i32* %106, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %109 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* @CPUID_8000_0001_EDX, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32 %107, i32* %112, align 4
  br label %113

113:                                              ; preds = %99, %96
  br label %114

114:                                              ; preds = %113, %87
  %115 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %116 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp uge i32 %117, -2147483641
  br i1 %118, label %119, label %130

119:                                              ; preds = %114
  %120 = call i32 @cpuid(i32 -2147483641, i32* %3, i32* %4, i32* %5, i32* %6)
  %121 = load i32, i32* %4, align 4
  %122 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %123 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* @CPUID_8000_0007_EBX, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32 %121, i32* %126, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %129 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %119, %114
  %131 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %132 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp uge i32 %133, -2147483640
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = call i32 @cpuid(i32 -2147483640, i32* %3, i32* %4, i32* %5, i32* %6)
  %137 = load i32, i32* %4, align 4
  %138 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %139 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i64, i64* @CPUID_8000_0008_EBX, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32 %137, i32* %142, align 4
  br label %143

143:                                              ; preds = %135, %130
  %144 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %145 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp uge i32 %146, -2147483638
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = call i32 @cpuid_edx(i32 -2147483638)
  %150 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %151 = getelementptr inbounds %struct.cpuinfo_x86, %struct.cpuinfo_x86* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* @CPUID_8000_000A_EDX, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32 %149, i32* %154, align 4
  br label %155

155:                                              ; preds = %148, %143
  %156 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %157 = call i32 @init_scattered_cpuid_features(%struct.cpuinfo_x86* %156)
  %158 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %159 = call i32 @init_speculation_control(%struct.cpuinfo_x86* %158)
  %160 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %161 = call i32 @init_cqm(%struct.cpuinfo_x86* %160)
  %162 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %2, align 8
  %163 = call i32 @apply_forced_caps(%struct.cpuinfo_x86* %162)
  ret void
}

declare dso_local i32 @cpuid(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @cpuid_eax(i32) #1

declare dso_local i32 @cpuid_count(i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @cpuid_edx(i32) #1

declare dso_local i32 @init_scattered_cpuid_features(%struct.cpuinfo_x86*) #1

declare dso_local i32 @init_speculation_control(%struct.cpuinfo_x86*) #1

declare dso_local i32 @init_cqm(%struct.cpuinfo_x86*) #1

declare dso_local i32 @apply_forced_caps(%struct.cpuinfo_x86*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
