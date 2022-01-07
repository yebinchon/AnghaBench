; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hashcat.c_hashcat_session_init.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hashcat.c_hashcat_session_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i32, i32 }

@NO_ERROR = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashcat_session_init(%struct.TYPE_28__* %0, i8* %1, i8* %2, i32 %3, i8** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  store %struct.TYPE_27__* %17, %struct.TYPE_27__** %14, align 8
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %19 = call i32 @user_options_session_auto(%struct.TYPE_28__* %18)
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %21 = call i32 @event_ctx_init(%struct.TYPE_28__* %20)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %138

24:                                               ; preds = %6
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %26 = call i32 @status_ctx_init(%struct.TYPE_28__* %25)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 -1, i32* %7, align 4
  br label %138

29:                                               ; preds = %24
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @folder_config_init(%struct.TYPE_28__* %30, i8* %31, i8* %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %7, align 4
  br label %138

36:                                               ; preds = %29
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %38 = call i32 @pidfile_ctx_init(%struct.TYPE_28__* %37)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 -1, i32* %7, align 4
  br label %138

41:                                               ; preds = %36
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i8**, i8*** %12, align 8
  %45 = call i32 @restore_ctx_init(%struct.TYPE_28__* %42, i32 %43, i8** %44)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 -1, i32* %7, align 4
  br label %138

48:                                               ; preds = %41
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %50 = call i32 @user_options_preprocess(%struct.TYPE_28__* %49)
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %52 = call i32 @user_options_extra_init(%struct.TYPE_28__* %51)
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %54 = call i32 @user_options_postprocess(%struct.TYPE_28__* %53)
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %56 = call i32 @logfile_init(%struct.TYPE_28__* %55)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 -1, i32* %7, align 4
  br label %138

59:                                               ; preds = %48
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %61 = call i32 @set_cpu_affinity(%struct.TYPE_28__* %60)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 -1, i32* %7, align 4
  br label %138

64:                                               ; preds = %59
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @setup_seeding(i32 %67, i32 %70)
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @setup_environment_variables(i32 %74)
  %76 = call i32 (...) @setup_umask()
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %78 = call i32 @tuning_db_init(%struct.TYPE_28__* %77)
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %64
  store i32 -1, i32* %7, align 4
  br label %138

81:                                               ; preds = %64
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %83 = call i32 @induct_ctx_init(%struct.TYPE_28__* %82)
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 -1, i32* %7, align 4
  br label %138

86:                                               ; preds = %81
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %88 = call i32 @outcheck_ctx_init(%struct.TYPE_28__* %87)
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 -1, i32* %7, align 4
  br label %138

91:                                               ; preds = %86
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %93 = call i32 @outfile_init(%struct.TYPE_28__* %92)
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 -1, i32* %7, align 4
  br label %138

96:                                               ; preds = %91
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %98 = call i32 @potfile_init(%struct.TYPE_28__* %97)
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 -1, i32* %7, align 4
  br label %138

101:                                              ; preds = %96
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %103 = call i32 @dictstat_init(%struct.TYPE_28__* %102)
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 -1, i32* %7, align 4
  br label %138

106:                                              ; preds = %101
  %107 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %108 = call i32 @loopback_init(%struct.TYPE_28__* %107)
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 -1, i32* %7, align 4
  br label %138

111:                                              ; preds = %106
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %113 = call i32 @debugfile_init(%struct.TYPE_28__* %112)
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i32 -1, i32* %7, align 4
  br label %138

116:                                              ; preds = %111
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %118 = call i32 @user_options_check_files(%struct.TYPE_28__* %117)
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 -1, i32* %7, align 4
  br label %138

121:                                              ; preds = %116
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %123 = call i32 @backend_ctx_init(%struct.TYPE_28__* %122)
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store i32 -1, i32* %7, align 4
  br label %138

126:                                              ; preds = %121
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @backend_ctx_devices_init(%struct.TYPE_28__* %127, i32 %128)
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  store i32 -1, i32* %7, align 4
  br label %138

132:                                              ; preds = %126
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %134 = call i32 @hwmon_ctx_init(%struct.TYPE_28__* %133)
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 -1, i32* %7, align 4
  br label %138

137:                                              ; preds = %132
  store i32 0, i32* %7, align 4
  br label %138

138:                                              ; preds = %137, %136, %131, %125, %120, %115, %110, %105, %100, %95, %90, %85, %80, %63, %58, %47, %40, %35, %28, %23
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i32 @user_options_session_auto(%struct.TYPE_28__*) #1

declare dso_local i32 @event_ctx_init(%struct.TYPE_28__*) #1

declare dso_local i32 @status_ctx_init(%struct.TYPE_28__*) #1

declare dso_local i32 @folder_config_init(%struct.TYPE_28__*, i8*, i8*) #1

declare dso_local i32 @pidfile_ctx_init(%struct.TYPE_28__*) #1

declare dso_local i32 @restore_ctx_init(%struct.TYPE_28__*, i32, i8**) #1

declare dso_local i32 @user_options_preprocess(%struct.TYPE_28__*) #1

declare dso_local i32 @user_options_extra_init(%struct.TYPE_28__*) #1

declare dso_local i32 @user_options_postprocess(%struct.TYPE_28__*) #1

declare dso_local i32 @logfile_init(%struct.TYPE_28__*) #1

declare dso_local i32 @set_cpu_affinity(%struct.TYPE_28__*) #1

declare dso_local i32 @setup_seeding(i32, i32) #1

declare dso_local i32 @setup_environment_variables(i32) #1

declare dso_local i32 @setup_umask(...) #1

declare dso_local i32 @tuning_db_init(%struct.TYPE_28__*) #1

declare dso_local i32 @induct_ctx_init(%struct.TYPE_28__*) #1

declare dso_local i32 @outcheck_ctx_init(%struct.TYPE_28__*) #1

declare dso_local i32 @outfile_init(%struct.TYPE_28__*) #1

declare dso_local i32 @potfile_init(%struct.TYPE_28__*) #1

declare dso_local i32 @dictstat_init(%struct.TYPE_28__*) #1

declare dso_local i32 @loopback_init(%struct.TYPE_28__*) #1

declare dso_local i32 @debugfile_init(%struct.TYPE_28__*) #1

declare dso_local i32 @user_options_check_files(%struct.TYPE_28__*) #1

declare dso_local i32 @backend_ctx_init(%struct.TYPE_28__*) #1

declare dso_local i32 @backend_ctx_devices_init(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @hwmon_ctx_init(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
