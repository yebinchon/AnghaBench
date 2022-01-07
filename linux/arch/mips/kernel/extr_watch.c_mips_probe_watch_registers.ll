; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_watch.c_mips_probe_watch_registers.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_watch.c_mips_probe_watch_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_mips = type { i32, i32*, i32, i32 }

@MIPS_CPU_WATCH = common dso_local global i32 0, align 4
@MIPS_WATCHLO_IRW = common dso_local global i32 0, align 4
@MIPS_WATCHHI_MASK = common dso_local global i32 0, align 4
@MIPS_WATCHHI_M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mips_probe_watch_registers(%struct.cpuinfo_mips* %0) #0 {
  %2 = alloca %struct.cpuinfo_mips*, align 8
  %3 = alloca i32, align 4
  store %struct.cpuinfo_mips* %0, %struct.cpuinfo_mips** %2, align 8
  %4 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %5 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @MIPS_CPU_WATCH, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %193

11:                                               ; preds = %1
  %12 = load i32, i32* @MIPS_WATCHLO_IRW, align 4
  %13 = call i32 @write_c0_watchlo0(i32 %12)
  %14 = call i32 (...) @back_to_back_c0_hazard()
  %15 = call i32 (...) @read_c0_watchlo0()
  store i32 %15, i32* %3, align 4
  %16 = call i32 @write_c0_watchlo0(i32 0)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @MIPS_WATCHLO_IRW, align 4
  %19 = and i32 %17, %18
  %20 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %21 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %25 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %24, i32 0, i32 2
  store i32 1, i32* %25, align 8
  %26 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %27 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %26, i32 0, i32 3
  store i32 1, i32* %27, align 4
  %28 = call i32 (...) @read_c0_watchhi0()
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @MIPS_WATCHHI_MASK, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @write_c0_watchhi0(i32 %31)
  %33 = call i32 (...) @back_to_back_c0_hazard()
  %34 = call i32 (...) @read_c0_watchhi0()
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @MIPS_WATCHHI_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %39 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @MIPS_WATCHHI_M, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %11
  br label %193

49:                                               ; preds = %11
  %50 = load i32, i32* @MIPS_WATCHLO_IRW, align 4
  %51 = call i32 @write_c0_watchlo1(i32 %50)
  %52 = call i32 (...) @back_to_back_c0_hazard()
  %53 = call i32 (...) @read_c0_watchlo1()
  store i32 %53, i32* %3, align 4
  %54 = call i32 @write_c0_watchlo1(i32 0)
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @MIPS_WATCHLO_IRW, align 4
  %57 = and i32 %55, %56
  %58 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %59 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 %57, i32* %61, align 4
  %62 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %63 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %62, i32 0, i32 2
  store i32 2, i32* %63, align 8
  %64 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %65 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %64, i32 0, i32 3
  store i32 2, i32* %65, align 4
  %66 = call i32 (...) @read_c0_watchhi1()
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @MIPS_WATCHHI_MASK, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @write_c0_watchhi1(i32 %69)
  %71 = call i32 (...) @back_to_back_c0_hazard()
  %72 = call i32 (...) @read_c0_watchhi1()
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @MIPS_WATCHHI_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %77 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %75
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @MIPS_WATCHHI_M, align 4
  %84 = and i32 %82, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %49
  br label %193

87:                                               ; preds = %49
  %88 = load i32, i32* @MIPS_WATCHLO_IRW, align 4
  %89 = call i32 @write_c0_watchlo2(i32 %88)
  %90 = call i32 (...) @back_to_back_c0_hazard()
  %91 = call i32 (...) @read_c0_watchlo2()
  store i32 %91, i32* %3, align 4
  %92 = call i32 @write_c0_watchlo2(i32 0)
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @MIPS_WATCHLO_IRW, align 4
  %95 = and i32 %93, %94
  %96 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %97 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 %95, i32* %99, align 4
  %100 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %101 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %100, i32 0, i32 2
  store i32 3, i32* %101, align 8
  %102 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %103 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %102, i32 0, i32 3
  store i32 3, i32* %103, align 4
  %104 = call i32 (...) @read_c0_watchhi2()
  store i32 %104, i32* %3, align 4
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @MIPS_WATCHHI_MASK, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @write_c0_watchhi2(i32 %107)
  %109 = call i32 (...) @back_to_back_c0_hazard()
  %110 = call i32 (...) @read_c0_watchhi2()
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @MIPS_WATCHHI_MASK, align 4
  %113 = and i32 %111, %112
  %114 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %115 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %113
  store i32 %119, i32* %117, align 4
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* @MIPS_WATCHHI_M, align 4
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %87
  br label %193

125:                                              ; preds = %87
  %126 = load i32, i32* @MIPS_WATCHLO_IRW, align 4
  %127 = call i32 @write_c0_watchlo3(i32 %126)
  %128 = call i32 (...) @back_to_back_c0_hazard()
  %129 = call i32 (...) @read_c0_watchlo3()
  store i32 %129, i32* %3, align 4
  %130 = call i32 @write_c0_watchlo3(i32 0)
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* @MIPS_WATCHLO_IRW, align 4
  %133 = and i32 %131, %132
  %134 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %135 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 3
  store i32 %133, i32* %137, align 4
  %138 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %139 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %138, i32 0, i32 2
  store i32 4, i32* %139, align 8
  %140 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %141 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %140, i32 0, i32 3
  store i32 4, i32* %141, align 4
  %142 = call i32 (...) @read_c0_watchhi3()
  store i32 %142, i32* %3, align 4
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* @MIPS_WATCHHI_MASK, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @write_c0_watchhi3(i32 %145)
  %147 = call i32 (...) @back_to_back_c0_hazard()
  %148 = call i32 (...) @read_c0_watchhi3()
  store i32 %148, i32* %3, align 4
  %149 = load i32, i32* %3, align 4
  %150 = load i32, i32* @MIPS_WATCHHI_MASK, align 4
  %151 = and i32 %149, %150
  %152 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %153 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 3
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %151
  store i32 %157, i32* %155, align 4
  %158 = load i32, i32* %3, align 4
  %159 = load i32, i32* @MIPS_WATCHHI_M, align 4
  %160 = and i32 %158, %159
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %125
  br label %193

163:                                              ; preds = %125
  %164 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %165 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %164, i32 0, i32 2
  store i32 5, i32* %165, align 8
  %166 = call i32 (...) @read_c0_watchhi4()
  store i32 %166, i32* %3, align 4
  %167 = load i32, i32* %3, align 4
  %168 = load i32, i32* @MIPS_WATCHHI_M, align 4
  %169 = and i32 %167, %168
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %163
  br label %193

172:                                              ; preds = %163
  %173 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %174 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %173, i32 0, i32 2
  store i32 6, i32* %174, align 8
  %175 = call i32 (...) @read_c0_watchhi5()
  store i32 %175, i32* %3, align 4
  %176 = load i32, i32* %3, align 4
  %177 = load i32, i32* @MIPS_WATCHHI_M, align 4
  %178 = and i32 %176, %177
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %172
  br label %193

181:                                              ; preds = %172
  %182 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %183 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %182, i32 0, i32 2
  store i32 7, i32* %183, align 8
  %184 = call i32 (...) @read_c0_watchhi6()
  store i32 %184, i32* %3, align 4
  %185 = load i32, i32* %3, align 4
  %186 = load i32, i32* @MIPS_WATCHHI_M, align 4
  %187 = and i32 %185, %186
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  br label %193

190:                                              ; preds = %181
  %191 = load %struct.cpuinfo_mips*, %struct.cpuinfo_mips** %2, align 8
  %192 = getelementptr inbounds %struct.cpuinfo_mips, %struct.cpuinfo_mips* %191, i32 0, i32 2
  store i32 8, i32* %192, align 8
  br label %193

193:                                              ; preds = %190, %189, %180, %171, %162, %124, %86, %48, %10
  ret void
}

declare dso_local i32 @write_c0_watchlo0(i32) #1

declare dso_local i32 @back_to_back_c0_hazard(...) #1

declare dso_local i32 @read_c0_watchlo0(...) #1

declare dso_local i32 @read_c0_watchhi0(...) #1

declare dso_local i32 @write_c0_watchhi0(i32) #1

declare dso_local i32 @write_c0_watchlo1(i32) #1

declare dso_local i32 @read_c0_watchlo1(...) #1

declare dso_local i32 @read_c0_watchhi1(...) #1

declare dso_local i32 @write_c0_watchhi1(i32) #1

declare dso_local i32 @write_c0_watchlo2(i32) #1

declare dso_local i32 @read_c0_watchlo2(...) #1

declare dso_local i32 @read_c0_watchhi2(...) #1

declare dso_local i32 @write_c0_watchhi2(i32) #1

declare dso_local i32 @write_c0_watchlo3(i32) #1

declare dso_local i32 @read_c0_watchlo3(...) #1

declare dso_local i32 @read_c0_watchhi3(...) #1

declare dso_local i32 @write_c0_watchhi3(i32) #1

declare dso_local i32 @read_c0_watchhi4(...) #1

declare dso_local i32 @read_c0_watchhi5(...) #1

declare dso_local i32 @read_c0_watchhi6(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
