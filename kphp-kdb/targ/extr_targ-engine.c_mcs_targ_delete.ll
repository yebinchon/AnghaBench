; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_mcs_targ_delete.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-engine.c_mcs_targ_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"delete \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"address%d \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"company%d \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"education%d \00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"interests%d#%d \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"military%d \00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"proposal%d \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"school%d \00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"user_group%d_%d \00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"user_langs%d \00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"user_lang%d_%d \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"user_groups%d \00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"user_groups_positive%d \00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"user_groups_negative%d \00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"user%d \00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"NOT_FOUND\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"DELETED\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcs_targ_delete(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load %struct.connection*, %struct.connection** %4, align 8
  %15 = call i32 @free_tmp_buffers(%struct.connection* %14)
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  switch i32 %18, label %134 [
    i32 97, label %19
    i32 99, label %27
    i32 101, label %35
    i32 105, label %43
    i32 109, label %52
    i32 112, label %60
    i32 115, label %68
    i32 117, label %76
  ]

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @do_delete_addresses(i32 %24)
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %23, %19
  br label %134

27:                                               ; preds = %3
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @do_delete_work(i32 %32)
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %31, %27
  br label %134

35:                                               ; preds = %3
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %7)
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @do_delete_education(i32 %40)
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %39, %35
  br label %134

43:                                               ; preds = %3
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %7, i32* %10)
  %46 = icmp sge i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @do_delete_interests(i32 %48, i32 %49)
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %47, %43
  br label %134

52:                                               ; preds = %3
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* %7)
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @do_delete_military(i32 %57)
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %56, %52
  br label %134

60:                                               ; preds = %3
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32* %7)
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @do_delete_proposal(i32 %65)
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %64, %60
  br label %134

68:                                               ; preds = %3
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32* %7)
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @do_delete_schools(i32 %73)
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %72, %68
  br label %134

76:                                               ; preds = %3
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32* %7, i32* %8)
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @do_delete_user_group(i32 %81, i32 %82)
  store i32 %83, i32* %11, align 4
  br label %133

84:                                               ; preds = %76
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32* %7)
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @do_delete_langs(i32 %89)
  store i32 %90, i32* %11, align 4
  br label %132

91:                                               ; preds = %84
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32* %7, i32* %9)
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @do_delete_user_lang(i32 %96, i32 %97)
  store i32 %98, i32* %11, align 4
  br label %131

99:                                               ; preds = %91
  %100 = load i8*, i8** %5, align 8
  %101 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32* %7)
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @do_delete_groups(i32 %104)
  store i32 %105, i32* %11, align 4
  br label %130

106:                                              ; preds = %99
  %107 = load i8*, i8** %5, align 8
  %108 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32* %7)
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @do_delete_positive_groups(i32 %111)
  store i32 %112, i32* %11, align 4
  br label %129

113:                                              ; preds = %106
  %114 = load i8*, i8** %5, align 8
  %115 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %114, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32* %7)
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @do_delete_negative_groups(i32 %118)
  store i32 %119, i32* %11, align 4
  br label %128

120:                                              ; preds = %113
  %121 = load i8*, i8** %5, align 8
  %122 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32* %7)
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @do_delete_user(i32 %125)
  store i32 %126, i32* %11, align 4
  br label %127

127:                                              ; preds = %124, %120
  br label %128

128:                                              ; preds = %127, %117
  br label %129

129:                                              ; preds = %128, %110
  br label %130

130:                                              ; preds = %129, %103
  br label %131

131:                                              ; preds = %130, %95
  br label %132

132:                                              ; preds = %131, %88
  br label %133

133:                                              ; preds = %132, %80
  br label %134

134:                                              ; preds = %3, %133, %75, %67, %59, %51, %42, %34, %26
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = load %struct.connection*, %struct.connection** %4, align 8
  %139 = getelementptr inbounds %struct.connection, %struct.connection* %138, i32 0, i32 0
  %140 = call i32 @write_out(i32* %139, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 11)
  br label %145

141:                                              ; preds = %134
  %142 = load %struct.connection*, %struct.connection** %4, align 8
  %143 = getelementptr inbounds %struct.connection, %struct.connection* %142, i32 0, i32 0
  %144 = call i32 @write_out(i32* %143, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 9)
  br label %145

145:                                              ; preds = %141, %137
  ret i32 0
}

declare dso_local i32 @vkprintf(i32, i8*, i8*) #1

declare dso_local i32 @free_tmp_buffers(%struct.connection*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @do_delete_addresses(i32) #1

declare dso_local i32 @do_delete_work(i32) #1

declare dso_local i32 @do_delete_education(i32) #1

declare dso_local i32 @do_delete_interests(i32, i32) #1

declare dso_local i32 @do_delete_military(i32) #1

declare dso_local i32 @do_delete_proposal(i32) #1

declare dso_local i32 @do_delete_schools(i32) #1

declare dso_local i32 @do_delete_user_group(i32, i32) #1

declare dso_local i32 @do_delete_langs(i32) #1

declare dso_local i32 @do_delete_user_lang(i32, i32) #1

declare dso_local i32 @do_delete_groups(i32) #1

declare dso_local i32 @do_delete_positive_groups(i32) #1

declare dso_local i32 @do_delete_negative_groups(i32) #1

declare dso_local i32 @do_delete_user(i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
