; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc.c_kcs_bmc_handle_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc.c_kcs_bmc_handle_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcs_bmc = type { i32, i32, i8*, i32, i8**, i32, i32, i32, i8** }

@KCS_MSG_BUFSIZ = common dso_local global i32 0, align 4
@WRITE_STATE = common dso_local global i32 0, align 4
@KCS_ZERO_DATA = common dso_local global i8* null, align 8
@KCS_LENGTH_ERROR = common dso_local global i8* null, align 8
@READ_STATE = common dso_local global i32 0, align 4
@KCS_PHASE_WRITE_DONE = common dso_local global i32 0, align 4
@IDLE_STATE = common dso_local global i32 0, align 4
@KCS_CMD_READ_BYTE = common dso_local global i8* null, align 8
@ERROR_STATE = common dso_local global i32 0, align 4
@KCS_PHASE_IDLE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kcs_bmc*)* @kcs_bmc_handle_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcs_bmc_handle_data(%struct.kcs_bmc* %0) #0 {
  %2 = alloca %struct.kcs_bmc*, align 8
  %3 = alloca i8*, align 8
  store %struct.kcs_bmc* %0, %struct.kcs_bmc** %2, align 8
  %4 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %5 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %157 [
    i32 128, label %7
    i32 130, label %10
    i32 129, label %41
    i32 131, label %77
    i32 133, label %131
    i32 132, label %144
  ]

7:                                                ; preds = %1
  %8 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %9 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %8, i32 0, i32 0
  store i32 130, i32* %9, align 8
  br label %10

10:                                               ; preds = %1, %7
  %11 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %12 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @KCS_MSG_BUFSIZ, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %18 = load i32, i32* @WRITE_STATE, align 4
  %19 = call i32 @set_state(%struct.kcs_bmc* %17, i32 %18)
  %20 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %21 = load i8*, i8** @KCS_ZERO_DATA, align 8
  %22 = call i32 @write_data(%struct.kcs_bmc* %20, i8* %21)
  %23 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %24 = call i8* @read_data(%struct.kcs_bmc* %23)
  %25 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %26 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %25, i32 0, i32 8
  %27 = load i8**, i8*** %26, align 8
  %28 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %29 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8*, i8** %27, i64 %32
  store i8* %24, i8** %33, align 8
  br label %40

34:                                               ; preds = %10
  %35 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %36 = call i32 @kcs_force_abort(%struct.kcs_bmc* %35)
  %37 = load i8*, i8** @KCS_LENGTH_ERROR, align 8
  %38 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %39 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %34, %16
  br label %160

41:                                               ; preds = %1
  %42 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %43 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @KCS_MSG_BUFSIZ, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %41
  %48 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %49 = load i32, i32* @READ_STATE, align 4
  %50 = call i32 @set_state(%struct.kcs_bmc* %48, i32 %49)
  %51 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %52 = call i8* @read_data(%struct.kcs_bmc* %51)
  %53 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %54 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %53, i32 0, i32 8
  %55 = load i8**, i8*** %54, align 8
  %56 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %57 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8*, i8** %55, i64 %60
  store i8* %52, i8** %61, align 8
  %62 = load i32, i32* @KCS_PHASE_WRITE_DONE, align 4
  %63 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %64 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %66 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %68 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %67, i32 0, i32 6
  %69 = call i32 @wake_up_interruptible(i32* %68)
  br label %76

70:                                               ; preds = %41
  %71 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %72 = call i32 @kcs_force_abort(%struct.kcs_bmc* %71)
  %73 = load i8*, i8** @KCS_LENGTH_ERROR, align 8
  %74 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %75 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  br label %76

76:                                               ; preds = %70, %47
  br label %160

77:                                               ; preds = %1
  %78 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %79 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %82 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %87 = load i32, i32* @IDLE_STATE, align 4
  %88 = call i32 @set_state(%struct.kcs_bmc* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %77
  %90 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %91 = call i8* @read_data(%struct.kcs_bmc* %90)
  store i8* %91, i8** %3, align 8
  %92 = load i8*, i8** %3, align 8
  %93 = load i8*, i8** @KCS_CMD_READ_BYTE, align 8
  %94 = icmp ne i8* %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %97 = load i32, i32* @ERROR_STATE, align 4
  %98 = call i32 @set_state(%struct.kcs_bmc* %96, i32 %97)
  %99 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %100 = load i8*, i8** @KCS_ZERO_DATA, align 8
  %101 = call i32 @write_data(%struct.kcs_bmc* %99, i8* %100)
  br label %160

102:                                              ; preds = %89
  %103 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %104 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %107 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %105, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %102
  %111 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %112 = load i8*, i8** @KCS_ZERO_DATA, align 8
  %113 = call i32 @write_data(%struct.kcs_bmc* %111, i8* %112)
  %114 = load i8*, i8** @KCS_PHASE_IDLE, align 8
  %115 = ptrtoint i8* %114 to i32
  %116 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %117 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %160

118:                                              ; preds = %102
  %119 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %120 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %121 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %120, i32 0, i32 4
  %122 = load i8**, i8*** %121, align 8
  %123 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %124 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8*, i8** %122, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @write_data(%struct.kcs_bmc* %119, i8* %129)
  br label %160

131:                                              ; preds = %1
  %132 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %133 = load i32, i32* @READ_STATE, align 4
  %134 = call i32 @set_state(%struct.kcs_bmc* %132, i32 %133)
  %135 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %136 = call i8* @read_data(%struct.kcs_bmc* %135)
  %137 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %138 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %139 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %138, i32 0, i32 2
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @write_data(%struct.kcs_bmc* %137, i8* %140)
  %142 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %143 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %142, i32 0, i32 0
  store i32 132, i32* %143, align 8
  br label %160

144:                                              ; preds = %1
  %145 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %146 = load i32, i32* @IDLE_STATE, align 4
  %147 = call i32 @set_state(%struct.kcs_bmc* %145, i32 %146)
  %148 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %149 = call i8* @read_data(%struct.kcs_bmc* %148)
  %150 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %151 = load i8*, i8** @KCS_ZERO_DATA, align 8
  %152 = call i32 @write_data(%struct.kcs_bmc* %150, i8* %151)
  %153 = load i8*, i8** @KCS_PHASE_IDLE, align 8
  %154 = ptrtoint i8* %153 to i32
  %155 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %156 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  br label %160

157:                                              ; preds = %1
  %158 = load %struct.kcs_bmc*, %struct.kcs_bmc** %2, align 8
  %159 = call i32 @kcs_force_abort(%struct.kcs_bmc* %158)
  br label %160

160:                                              ; preds = %157, %144, %131, %118, %110, %95, %76, %40
  ret void
}

declare dso_local i32 @set_state(%struct.kcs_bmc*, i32) #1

declare dso_local i32 @write_data(%struct.kcs_bmc*, i8*) #1

declare dso_local i8* @read_data(%struct.kcs_bmc*) #1

declare dso_local i32 @kcs_force_abort(%struct.kcs_bmc*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
