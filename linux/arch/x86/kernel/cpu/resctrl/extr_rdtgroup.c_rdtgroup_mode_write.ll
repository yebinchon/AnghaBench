; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_mode_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_rdtgroup.c_rdtgroup_mode_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { i32 }
%struct.rdtgroup = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"shareable\00", align 1
@RDT_MODE_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"exclusive\00", align 1
@RDT_MODE_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"pseudo-locksetup\00", align 1
@RDT_MODE_PSEUDO_LOCKSETUP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"pseudo-locked\00", align 1
@RDT_MODE_PSEUDO_LOCKED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Cannot change pseudo-locked group\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Unknown or unsupported mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kernfs_open_file*, i8*, i64, i32)* @rdtgroup_mode_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rdtgroup_mode_write(%struct.kernfs_open_file* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rdtgroup*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %13 = load i64, i64* %8, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = sub i64 %17, 1
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 10
  br i1 %22, label %23, label %26

23:                                               ; preds = %15, %4
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %175

26:                                               ; preds = %15
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = sub i64 %28, 1
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 0, i8* %30, align 1
  %31 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %32 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.rdtgroup* @rdtgroup_kn_lock_live(i32 %33)
  store %struct.rdtgroup* %34, %struct.rdtgroup** %10, align 8
  %35 = load %struct.rdtgroup*, %struct.rdtgroup** %10, align 8
  %36 = icmp ne %struct.rdtgroup* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %26
  %38 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %39 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @rdtgroup_kn_unlock(i32 %40)
  %42 = load i64, i64* @ENOENT, align 8
  %43 = sub i64 0, %42
  store i64 %43, i64* %5, align 8
  br label %175

44:                                               ; preds = %26
  %45 = call i32 (...) @rdt_last_cmd_clear()
  %46 = load %struct.rdtgroup*, %struct.rdtgroup** %10, align 8
  %47 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @RDT_MODE_SHAREABLE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %80, label %56

56:                                               ; preds = %52, %44
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @RDT_MODE_EXCLUSIVE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %80, label %64

64:                                               ; preds = %60, %56
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @RDT_MODE_PSEUDO_LOCKSETUP, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %68, %64
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @RDT_MODE_PSEUDO_LOCKED, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %68, %60, %52
  br label %162

81:                                               ; preds = %76, %72
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @RDT_MODE_PSEUDO_LOCKED, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i64, i64* @EINVAL, align 8
  %88 = sub i64 0, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %12, align 4
  br label %162

90:                                               ; preds = %81
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %111, label %94

94:                                               ; preds = %90
  %95 = load %struct.rdtgroup*, %struct.rdtgroup** %10, align 8
  %96 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @RDT_MODE_PSEUDO_LOCKSETUP, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load %struct.rdtgroup*, %struct.rdtgroup** %10, align 8
  %102 = call i32 @rdtgroup_locksetup_exit(%struct.rdtgroup* %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %162

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %94
  %108 = load i32, i32* @RDT_MODE_SHAREABLE, align 4
  %109 = load %struct.rdtgroup*, %struct.rdtgroup** %10, align 8
  %110 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  br label %161

111:                                              ; preds = %90
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 @strcmp(i8* %112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %140, label %115

115:                                              ; preds = %111
  %116 = load %struct.rdtgroup*, %struct.rdtgroup** %10, align 8
  %117 = call i32 @rdtgroup_mode_test_exclusive(%struct.rdtgroup* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = load i64, i64* @EINVAL, align 8
  %121 = sub i64 0, %120
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %12, align 4
  br label %162

123:                                              ; preds = %115
  %124 = load %struct.rdtgroup*, %struct.rdtgroup** %10, align 8
  %125 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @RDT_MODE_PSEUDO_LOCKSETUP, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %123
  %130 = load %struct.rdtgroup*, %struct.rdtgroup** %10, align 8
  %131 = call i32 @rdtgroup_locksetup_exit(%struct.rdtgroup* %130)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %162

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135, %123
  %137 = load i32, i32* @RDT_MODE_EXCLUSIVE, align 4
  %138 = load %struct.rdtgroup*, %struct.rdtgroup** %10, align 8
  %139 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  br label %160

140:                                              ; preds = %111
  %141 = load i8*, i8** %7, align 8
  %142 = call i32 @strcmp(i8* %141, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %140
  %145 = load %struct.rdtgroup*, %struct.rdtgroup** %10, align 8
  %146 = call i32 @rdtgroup_locksetup_enter(%struct.rdtgroup* %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %162

150:                                              ; preds = %144
  %151 = load i32, i32* @RDT_MODE_PSEUDO_LOCKSETUP, align 4
  %152 = load %struct.rdtgroup*, %struct.rdtgroup** %10, align 8
  %153 = getelementptr inbounds %struct.rdtgroup, %struct.rdtgroup* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 4
  br label %159

154:                                              ; preds = %140
  %155 = call i32 @rdt_last_cmd_puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %156 = load i64, i64* @EINVAL, align 8
  %157 = sub i64 0, %156
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %12, align 4
  br label %159

159:                                              ; preds = %154, %150
  br label %160

160:                                              ; preds = %159, %136
  br label %161

161:                                              ; preds = %160, %107
  br label %162

162:                                              ; preds = %161, %149, %134, %119, %105, %85, %80
  %163 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %164 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @rdtgroup_kn_unlock(i32 %165)
  %167 = load i32, i32* %12, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %162
  %170 = sext i32 %167 to i64
  br label %173

171:                                              ; preds = %162
  %172 = load i64, i64* %8, align 8
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i64 [ %170, %169 ], [ %172, %171 ]
  store i64 %174, i64* %5, align 8
  br label %175

175:                                              ; preds = %173, %37, %23
  %176 = load i64, i64* %5, align 8
  ret i64 %176
}

declare dso_local %struct.rdtgroup* @rdtgroup_kn_lock_live(i32) #1

declare dso_local i32 @rdtgroup_kn_unlock(i32) #1

declare dso_local i32 @rdt_last_cmd_clear(...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @rdt_last_cmd_puts(i8*) #1

declare dso_local i32 @rdtgroup_locksetup_exit(%struct.rdtgroup*) #1

declare dso_local i32 @rdtgroup_mode_test_exclusive(%struct.rdtgroup*) #1

declare dso_local i32 @rdtgroup_locksetup_enter(%struct.rdtgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
