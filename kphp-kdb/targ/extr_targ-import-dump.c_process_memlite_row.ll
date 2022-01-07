; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_process_memlite_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-import-dump.c_process_memlite_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_birthday = type { i32, i32, i32, i32, i32 }

@I = common dso_local global i32* null, align 8
@ml_id = common dso_local global i64 0, align 8
@user_id = common dso_local global i32 0, align 4
@ml_bday_day = common dso_local global i64 0, align 8
@ml_bday_month = common dso_local global i64 0, align 8
@ml_bday_year = common dso_local global i64 0, align 8
@LEV_TARG_BIRTHDAY = common dso_local global i32 0, align 4
@ml_uni_country = common dso_local global i64 0, align 8
@ml_uni_city = common dso_local global i64 0, align 8
@LEV_TARG_UNIVCITY = common dso_local global i32 0, align 4
@ml_ip = common dso_local global i64 0, align 8
@ml_logged = common dso_local global i64 0, align 8
@LEV_TARG_ONLINE = common dso_local global i32 0, align 4
@ml_sex = common dso_local global i64 0, align 8
@LEV_TARG_SEX = common dso_local global i32 0, align 4
@ml_political = common dso_local global i64 0, align 8
@LEV_TARG_POLITICAL = common dso_local global i32 0, align 4
@ml_rate = common dso_local global i64 0, align 8
@ml_cute = common dso_local global i64 0, align 8
@LEV_TARG_RATECUTE = common dso_local global i32 0, align 4
@LEV_TARG_RATE = common dso_local global i32 0, align 4
@LEV_TARG_CUTE = common dso_local global i32 0, align 4
@ml_profile_privacy = common dso_local global i64 0, align 8
@LEV_TARG_PRIVACY = common dso_local global i32 0, align 4
@ml_status = common dso_local global i64 0, align 8
@LEV_TARG_MSTATUS = common dso_local global i32 0, align 4
@L = common dso_local global i32* null, align 8
@ml_photo = common dso_local global i64 0, align 8
@LEV_TARG_USERFLAGS = common dso_local global i64 0, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_memlite_row() #0 {
  %1 = alloca %struct.lev_birthday*, align 8
  %2 = load i32*, i32** @I, align 8
  %3 = load i64, i64* @ml_id, align 8
  %4 = getelementptr inbounds i32, i32* %2, i64 %3
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @fits(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %216

9:                                                ; preds = %0
  %10 = load i32*, i32** @I, align 8
  %11 = load i64, i64* @ml_id, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* @user_id, align 4
  %14 = load i32*, i32** @I, align 8
  %15 = load i64, i64* @ml_bday_day, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %9
  %20 = load i32*, i32** @I, align 8
  %21 = load i64, i64* @ml_bday_month, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i32*, i32** @I, align 8
  %27 = load i64, i64* @ml_bday_year, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %25, %19, %9
  %32 = call %struct.lev_birthday* @write_alloc(i32 20)
  store %struct.lev_birthday* %32, %struct.lev_birthday** %1, align 8
  %33 = load i32, i32* @LEV_TARG_BIRTHDAY, align 4
  %34 = load %struct.lev_birthday*, %struct.lev_birthday** %1, align 8
  %35 = getelementptr inbounds %struct.lev_birthday, %struct.lev_birthday* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** @I, align 8
  %37 = load i64, i64* @ml_id, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.lev_birthday*, %struct.lev_birthday** %1, align 8
  %41 = getelementptr inbounds %struct.lev_birthday, %struct.lev_birthday* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** @I, align 8
  %43 = load i64, i64* @ml_bday_day, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.lev_birthday*, %struct.lev_birthday** %1, align 8
  %47 = getelementptr inbounds %struct.lev_birthday, %struct.lev_birthday* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** @I, align 8
  %49 = load i64, i64* @ml_bday_month, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.lev_birthday*, %struct.lev_birthday** %1, align 8
  %53 = getelementptr inbounds %struct.lev_birthday, %struct.lev_birthday* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** @I, align 8
  %55 = load i64, i64* @ml_bday_year, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.lev_birthday*, %struct.lev_birthday** %1, align 8
  %59 = getelementptr inbounds %struct.lev_birthday, %struct.lev_birthday* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %31, %25
  %61 = load i32*, i32** @I, align 8
  %62 = load i64, i64* @ml_uni_country, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load i32*, i32** @I, align 8
  %68 = load i64, i64* @ml_uni_city, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %66, %60
  %73 = load i32, i32* @LEV_TARG_UNIVCITY, align 4
  %74 = load i32*, i32** @I, align 8
  %75 = load i64, i64* @ml_uni_country, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** @I, align 8
  %79 = load i64, i64* @ml_uni_city, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @log_2ints(i32 %73, i32 %77, i32 %81)
  br label %83

83:                                               ; preds = %72, %66
  %84 = load i32*, i32** @I, align 8
  %85 = load i64, i64* @ml_ip, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load i32*, i32** @I, align 8
  %91 = load i64, i64* @ml_logged, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %89, %83
  %96 = load i32, i32* @LEV_TARG_ONLINE, align 4
  %97 = load i32*, i32** @I, align 8
  %98 = load i64, i64* @ml_ip, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** @I, align 8
  %102 = load i64, i64* @ml_logged, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @log_2ints(i32 %96, i32 %100, i32 %104)
  br label %106

106:                                              ; preds = %95, %89
  %107 = load i32*, i32** @I, align 8
  %108 = load i64, i64* @ml_sex, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %106
  %113 = load i32, i32* @LEV_TARG_SEX, align 4
  %114 = load i32*, i32** @I, align 8
  %115 = load i64, i64* @ml_sex, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @log_1int(i32 %113, i32 %117)
  br label %119

119:                                              ; preds = %112, %106
  %120 = load i32*, i32** @I, align 8
  %121 = load i64, i64* @ml_political, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = load i32, i32* @LEV_TARG_POLITICAL, align 4
  %127 = load i32*, i32** @I, align 8
  %128 = load i64, i64* @ml_political, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @log_1int(i32 %126, i32 %130)
  br label %132

132:                                              ; preds = %125, %119
  %133 = load i32*, i32** @I, align 8
  %134 = load i64, i64* @ml_rate, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %163

138:                                              ; preds = %132
  %139 = load i32*, i32** @I, align 8
  %140 = load i64, i64* @ml_cute, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %138
  %145 = load i32, i32* @LEV_TARG_RATECUTE, align 4
  %146 = load i32*, i32** @I, align 8
  %147 = load i64, i64* @ml_rate, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** @I, align 8
  %151 = load i64, i64* @ml_cute, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @log_2ints(i32 %145, i32 %149, i32 %153)
  br label %162

155:                                              ; preds = %138
  %156 = load i32, i32* @LEV_TARG_RATE, align 4
  %157 = load i32*, i32** @I, align 8
  %158 = load i64, i64* @ml_rate, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @log_1int(i32 %156, i32 %160)
  br label %162

162:                                              ; preds = %155, %144
  br label %177

163:                                              ; preds = %132
  %164 = load i32*, i32** @I, align 8
  %165 = load i64, i64* @ml_cute, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %163
  %170 = load i32, i32* @LEV_TARG_CUTE, align 4
  %171 = load i32*, i32** @I, align 8
  %172 = load i64, i64* @ml_cute, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @log_1int(i32 %170, i32 %174)
  br label %176

176:                                              ; preds = %169, %163
  br label %177

177:                                              ; preds = %176, %162
  %178 = load i32*, i32** @I, align 8
  %179 = load i64, i64* @ml_profile_privacy, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 1
  br i1 %182, label %183, label %190

183:                                              ; preds = %177
  %184 = load i32, i32* @LEV_TARG_PRIVACY, align 4
  %185 = load i32*, i32** @I, align 8
  %186 = load i64, i64* @ml_profile_privacy, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @log_1int(i32 %184, i32 %188)
  br label %190

190:                                              ; preds = %183, %177
  %191 = load i32*, i32** @I, align 8
  %192 = load i64, i64* @ml_status, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %190
  %197 = load i32, i32* @LEV_TARG_MSTATUS, align 4
  %198 = load i32*, i32** @I, align 8
  %199 = load i64, i64* @ml_status, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @log_1int(i32 %197, i32 %201)
  br label %203

203:                                              ; preds = %196, %190
  %204 = load i32*, i32** @L, align 8
  %205 = load i64, i64* @ml_photo, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = icmp sgt i32 %207, 4
  br i1 %208, label %209, label %213

209:                                              ; preds = %203
  %210 = load i64, i64* @LEV_TARG_USERFLAGS, align 8
  %211 = add nsw i64 %210, 1
  %212 = call i32 @log_0ints(i64 %211)
  br label %213

213:                                              ; preds = %209, %203
  %214 = load i32, i32* @adj_rec, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* @adj_rec, align 4
  br label %216

216:                                              ; preds = %213, %8
  ret void
}

declare dso_local i32 @fits(i32) #1

declare dso_local %struct.lev_birthday* @write_alloc(i32) #1

declare dso_local i32 @log_2ints(i32, i32, i32) #1

declare dso_local i32 @log_1int(i32, i32) #1

declare dso_local i32 @log_0ints(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
