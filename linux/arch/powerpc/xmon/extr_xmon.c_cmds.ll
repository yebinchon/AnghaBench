; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_cmds.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_xmon.c_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32, i32* }

@last_cmd = common dso_local global i32* null, align 8
@xmon_regs = common dso_local global %struct.pt_regs* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"mon> \00", align 1
@termch = common dso_local global i32 0, align 4
@xmon_is_ro = common dso_local global i32 0, align 4
@xmon_ro_msg = common dso_local global i8* null, align 8
@tracing_enabled = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c" <no input ...>\0A\00", align 1
@help_string = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Unrecognized command: \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\\x%x\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c" (type ? for help)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*)* @cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmds(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** @last_cmd, align 8
  %5 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  store %struct.pt_regs* %5, %struct.pt_regs** @xmon_regs, align 8
  %6 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %7 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @xmon_show_stack(i32 %10, i32 %13, i32 %16)
  br label %18

18:                                               ; preds = %150, %27, %1
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 (...) @flush_input()
  store i32 0, i32* @termch, align 4
  %21 = call i32 (...) @skipbl()
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load i32*, i32** @last_cmd, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %18

28:                                               ; preds = %24
  %29 = load i32*, i32** @last_cmd, align 8
  %30 = call i32 @take_input(i32* %29)
  store i32* null, i32** @last_cmd, align 8
  %31 = call i32 (...) @inchar()
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %18
  %33 = load i32, i32* %4, align 4
  switch i32 %33, label %129 [
    i32 109, label %34
    i32 100, label %56
    i32 108, label %58
    i32 114, label %60
    i32 101, label %63
    i32 83, label %66
    i32 116, label %68
    i32 102, label %71
    i32 115, label %73
    i32 120, label %84
    i32 88, label %84
    i32 128, label %91
    i32 63, label %95
    i32 35, label %98
    i32 98, label %100
    i32 67, label %108
    i32 99, label %110
    i32 122, label %115
    i32 112, label %117
    i32 80, label %125
    i32 85, label %127
  ]

34:                                               ; preds = %32
  %35 = call i32 (...) @inchar()
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  switch i32 %36, label %52 [
    i32 109, label %37
    i32 115, label %37
    i32 100, label %37
    i32 108, label %40
    i32 122, label %42
    i32 105, label %50
  ]

37:                                               ; preds = %34, %34, %34
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @memops(i32 %38)
  br label %55

40:                                               ; preds = %34
  %41 = call i32 (...) @memlocate()
  br label %55

42:                                               ; preds = %34
  %43 = load i32, i32* @xmon_is_ro, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i8*, i8** @xmon_ro_msg, align 8
  %47 = call i32 (i8*, ...) @printf(i8* %46)
  br label %55

48:                                               ; preds = %42
  %49 = call i32 (...) @memzcan()
  br label %55

50:                                               ; preds = %34
  %51 = call i32 @show_mem(i32 0, i32* null)
  br label %55

52:                                               ; preds = %34
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* @termch, align 4
  %54 = call i32 (...) @memex()
  br label %55

55:                                               ; preds = %52, %50, %48, %45, %40, %37
  br label %150

56:                                               ; preds = %32
  %57 = call i32 (...) @dump()
  br label %150

58:                                               ; preds = %32
  %59 = call i32 (...) @symbol_lookup()
  br label %150

60:                                               ; preds = %32
  %61 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %62 = call i32 @prregs(%struct.pt_regs* %61)
  br label %150

63:                                               ; preds = %32
  %64 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %65 = call i32 @excprint(%struct.pt_regs* %64)
  br label %150

66:                                               ; preds = %32
  %67 = call i32 (...) @super_regs()
  br label %150

68:                                               ; preds = %32
  %69 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %70 = call i32 @backtrace(%struct.pt_regs* %69)
  br label %150

71:                                               ; preds = %32
  %72 = call i32 (...) @cacheflush()
  br label %150

73:                                               ; preds = %32
  %74 = call i32 (...) @do_spu_cmd()
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  br label %150

77:                                               ; preds = %73
  %78 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %79 = call i32 @do_step(%struct.pt_regs* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %151

83:                                               ; preds = %77
  br label %150

84:                                               ; preds = %32, %32
  %85 = load i32, i32* @tracing_enabled, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 (...) @tracing_on()
  br label %89

89:                                               ; preds = %87, %84
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %151

91:                                               ; preds = %32
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %93 = call i32 @mdelay(i32 2000)
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %151

95:                                               ; preds = %32
  %96 = load i32, i32* @help_string, align 4
  %97 = call i32 @xmon_puts(i32 %96)
  br label %150

98:                                               ; preds = %32
  %99 = call i32 (...) @set_lpp_cmd()
  br label %150

100:                                              ; preds = %32
  %101 = load i32, i32* @xmon_is_ro, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i8*, i8** @xmon_ro_msg, align 8
  %105 = call i32 (i8*, ...) @printf(i8* %104)
  br label %150

106:                                              ; preds = %100
  %107 = call i32 (...) @bpt_cmds()
  br label %150

108:                                              ; preds = %32
  %109 = call i32 (...) @csum()
  br label %150

110:                                              ; preds = %32
  %111 = call i32 (...) @cpu_cmd()
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %151

114:                                              ; preds = %110
  br label %150

115:                                              ; preds = %32
  %116 = call i32 (...) @bootcmds()
  br label %150

117:                                              ; preds = %32
  %118 = load i32, i32* @xmon_is_ro, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i8*, i8** @xmon_ro_msg, align 8
  %122 = call i32 (i8*, ...) @printf(i8* %121)
  br label %150

123:                                              ; preds = %117
  %124 = call i32 (...) @proccall()
  br label %150

125:                                              ; preds = %32
  %126 = call i32 (...) @show_tasks()
  br label %150

127:                                              ; preds = %32
  %128 = call i32 (...) @show_uptime()
  br label %150

129:                                              ; preds = %32
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %131

131:                                              ; preds = %145, %129
  %132 = load i32, i32* %4, align 4
  %133 = icmp slt i32 32, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %131
  %135 = load i32, i32* %4, align 4
  %136 = icmp sle i32 %135, 126
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @putchar(i32 %138)
  br label %143

140:                                              ; preds = %134, %131
  %141 = load i32, i32* %4, align 4
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = call i32 (...) @inchar()
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %143
  %146 = load i32, i32* %4, align 4
  %147 = icmp ne i32 %146, 10
  br i1 %147, label %131, label %148

148:                                              ; preds = %145
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %127, %125, %123, %120, %115, %114, %108, %106, %103, %98, %95, %83, %76, %71, %68, %66, %63, %60, %58, %56, %55
  br label %18

151:                                              ; preds = %113, %91, %89, %81
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @xmon_show_stack(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @flush_input(...) #1

declare dso_local i32 @skipbl(...) #1

declare dso_local i32 @take_input(i32*) #1

declare dso_local i32 @inchar(...) #1

declare dso_local i32 @memops(i32) #1

declare dso_local i32 @memlocate(...) #1

declare dso_local i32 @memzcan(...) #1

declare dso_local i32 @show_mem(i32, i32*) #1

declare dso_local i32 @memex(...) #1

declare dso_local i32 @dump(...) #1

declare dso_local i32 @symbol_lookup(...) #1

declare dso_local i32 @prregs(%struct.pt_regs*) #1

declare dso_local i32 @excprint(%struct.pt_regs*) #1

declare dso_local i32 @super_regs(...) #1

declare dso_local i32 @backtrace(%struct.pt_regs*) #1

declare dso_local i32 @cacheflush(...) #1

declare dso_local i32 @do_spu_cmd(...) #1

declare dso_local i32 @do_step(%struct.pt_regs*) #1

declare dso_local i32 @tracing_on(...) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @xmon_puts(i32) #1

declare dso_local i32 @set_lpp_cmd(...) #1

declare dso_local i32 @bpt_cmds(...) #1

declare dso_local i32 @csum(...) #1

declare dso_local i32 @cpu_cmd(...) #1

declare dso_local i32 @bootcmds(...) #1

declare dso_local i32 @proccall(...) #1

declare dso_local i32 @show_tasks(...) #1

declare dso_local i32 @show_uptime(...) #1

declare dso_local i32 @putchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
